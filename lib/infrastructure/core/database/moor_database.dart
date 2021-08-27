import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:moor/moor.dart';
import 'package:pharma_flutter/domain/auth/user.dart';
import 'package:pharma_flutter/domain/core/i_database_facade.dart';

part 'moor_database.g.dart';

@DataClassName('Search')
class Searches extends Table {
  TextColumn get searchTerm => text()();
  @override
  Set<Column> get primaryKey => {searchTerm};
}

@DataClassName('UserRow')
class UserTable extends Table {
  TextColumn get id => text()();
  TextColumn get userName => text()();
  @override
  Set<Column> get primaryKey => {id};
}

@LazySingleton(as: IDatabaseFacade)
@UseMoor(tables: [Searches, UserTable])
class AppDatabase extends _$AppDatabase implements IDatabaseFacade {
  final _storage = FlutterSecureStorage();

  AppDatabase()
      : super(
          FlutterQueryExecutor.inDatabaseFolder(
              path: 'db.sqlite', logStatements: true),
        );
  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration =>
      MigrationStrategy(onUpgrade: (migrator, from, to) async {
        if (from == 1) {
          await migrator.createTable(userTable);
        }
      });

  // Search history related
  Future<List<Search>> getSearchHistories() => select(searches).get();
  Future insertSearchHistory(Search search) => into(searches).insert(search);
  Future updateSearchHistory(Search search) async {
    return (update(searches)
          ..where((t) => t.searchTerm.equals(search.searchTerm)))
        .write(search);
  }

  Future deleteSearchHistory(Search search) => delete(searches).delete(search);

  // User auth persistance related
  Future<User?> getUser() async {
    String? token = await _storage.read(key: 'X-Access-Token');
    List<UserRow> possibleUser = await select(userTable).get();
    if (possibleUser.isNotEmpty && token != null) {
      return User(
        id: possibleUser[0].id,
        token: token,
        userName: possibleUser[0].userName,
      );
    } else
      return null;
  }

  Future insertUser(UserRow userRow, String accessToken) async {
    deleteUser();
    try {
      await _storage.write(key: 'X-Access-Token', value: accessToken);
    } catch (e) {
      return await _storage.deleteAll();
    }
    return into(userTable).insert(userRow);
  }

  Future deleteUser() async {
    // await _storage.deleteAll();
    return delete(userTable).go();
  }
}

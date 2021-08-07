import 'package:injectable/injectable.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:moor/moor.dart';
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
  TextColumn get token => text()();
  TextColumn get userName => text().nullable()();
  @override
  Set<Column> get primaryKey => {id};
}

@LazySingleton(as: IDatabaseFacade)
@UseMoor(tables: [Searches, UserTable])
class AppDatabase extends _$AppDatabase implements IDatabaseFacade {
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
  Future<List<UserRow>> getUser() => select(userTable).get();
  Future insertUser(UserRow userRow) => into(userTable).insert(userRow);
  Future deleteUser() => delete(userTable).go();
}

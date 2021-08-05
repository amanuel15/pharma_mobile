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

@LazySingleton(as: IDatabaseFacade)
@UseMoor(tables: [Searches])
class AppDatabase extends _$AppDatabase implements IDatabaseFacade {
  AppDatabase()
      : super(
          FlutterQueryExecutor.inDatabaseFolder(
              path: 'db.sqlite', logStatements: true),
        );
  @override
  int get schemaVersion => 1;

  Future<List<Search>> getSearchHistories() => select(searches).get();

  Future insertSearchHistory(Search search) => into(searches).insert(search);
  Future updateSearchHistory(Search search) async {
    return (update(searches)
          ..where((t) => t.searchTerm.equals(search.searchTerm)))
        .write(search);
  }

  Future deleteSearchHistory(Search search) => delete(searches).delete(search);
}

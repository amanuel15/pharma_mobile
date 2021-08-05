// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Search extends DataClass implements Insertable<Search> {
  final String searchTerm;
  Search({required this.searchTerm});
  factory Search.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Search(
      searchTerm: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}search_term'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['search_term'] = Variable<String>(searchTerm);
    return map;
  }

  SearchesCompanion toCompanion(bool nullToAbsent) {
    return SearchesCompanion(
      searchTerm: Value(searchTerm),
    );
  }

  factory Search.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Search(
      searchTerm: serializer.fromJson<String>(json['searchTerm']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'searchTerm': serializer.toJson<String>(searchTerm),
    };
  }

  Search copyWith({String? searchTerm}) => Search(
        searchTerm: searchTerm ?? this.searchTerm,
      );
  @override
  String toString() {
    return (StringBuffer('Search(')
          ..write('searchTerm: $searchTerm')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf(searchTerm.hashCode);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Search && other.searchTerm == this.searchTerm);
}

class SearchesCompanion extends UpdateCompanion<Search> {
  final Value<String> searchTerm;
  const SearchesCompanion({
    this.searchTerm = const Value.absent(),
  });
  SearchesCompanion.insert({
    required String searchTerm,
  }) : searchTerm = Value(searchTerm);
  static Insertable<Search> custom({
    Expression<String>? searchTerm,
  }) {
    return RawValuesInsertable({
      if (searchTerm != null) 'search_term': searchTerm,
    });
  }

  SearchesCompanion copyWith({Value<String>? searchTerm}) {
    return SearchesCompanion(
      searchTerm: searchTerm ?? this.searchTerm,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (searchTerm.present) {
      map['search_term'] = Variable<String>(searchTerm.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SearchesCompanion(')
          ..write('searchTerm: $searchTerm')
          ..write(')'))
        .toString();
  }
}

class $SearchesTable extends Searches with TableInfo<$SearchesTable, Search> {
  final GeneratedDatabase _db;
  final String? _alias;
  $SearchesTable(this._db, [this._alias]);
  final VerificationMeta _searchTermMeta = const VerificationMeta('searchTerm');
  late final GeneratedColumn<String?> searchTerm = GeneratedColumn<String?>(
      'search_term', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [searchTerm];
  @override
  String get aliasedName => _alias ?? 'searches';
  @override
  String get actualTableName => 'searches';
  @override
  VerificationContext validateIntegrity(Insertable<Search> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('search_term')) {
      context.handle(
          _searchTermMeta,
          searchTerm.isAcceptableOrUnknown(
              data['search_term']!, _searchTermMeta));
    } else if (isInserting) {
      context.missing(_searchTermMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {searchTerm};
  @override
  Search map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Search.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $SearchesTable createAlias(String alias) {
    return $SearchesTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $SearchesTable searches = $SearchesTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [searches];
}

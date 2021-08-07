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

class UserRow extends DataClass implements Insertable<UserRow> {
  final String id;
  final String token;
  final String? userName;
  UserRow({required this.id, required this.token, this.userName});
  factory UserRow.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return UserRow(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      token: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}token'])!,
      userName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}user_name']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['token'] = Variable<String>(token);
    if (!nullToAbsent || userName != null) {
      map['user_name'] = Variable<String?>(userName);
    }
    return map;
  }

  UserTableCompanion toCompanion(bool nullToAbsent) {
    return UserTableCompanion(
      id: Value(id),
      token: Value(token),
      userName: userName == null && nullToAbsent
          ? const Value.absent()
          : Value(userName),
    );
  }

  factory UserRow.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return UserRow(
      id: serializer.fromJson<String>(json['id']),
      token: serializer.fromJson<String>(json['token']),
      userName: serializer.fromJson<String?>(json['userName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'token': serializer.toJson<String>(token),
      'userName': serializer.toJson<String?>(userName),
    };
  }

  UserRow copyWith({String? id, String? token, String? userName}) => UserRow(
        id: id ?? this.id,
        token: token ?? this.token,
        userName: userName ?? this.userName,
      );
  @override
  String toString() {
    return (StringBuffer('UserRow(')
          ..write('id: $id, ')
          ..write('token: $token, ')
          ..write('userName: $userName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(token.hashCode, userName.hashCode)));
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserRow &&
          other.id == this.id &&
          other.token == this.token &&
          other.userName == this.userName);
}

class UserTableCompanion extends UpdateCompanion<UserRow> {
  final Value<String> id;
  final Value<String> token;
  final Value<String?> userName;
  const UserTableCompanion({
    this.id = const Value.absent(),
    this.token = const Value.absent(),
    this.userName = const Value.absent(),
  });
  UserTableCompanion.insert({
    required String id,
    required String token,
    this.userName = const Value.absent(),
  })  : id = Value(id),
        token = Value(token);
  static Insertable<UserRow> custom({
    Expression<String>? id,
    Expression<String>? token,
    Expression<String?>? userName,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (token != null) 'token': token,
      if (userName != null) 'user_name': userName,
    });
  }

  UserTableCompanion copyWith(
      {Value<String>? id, Value<String>? token, Value<String?>? userName}) {
    return UserTableCompanion(
      id: id ?? this.id,
      token: token ?? this.token,
      userName: userName ?? this.userName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (token.present) {
      map['token'] = Variable<String>(token.value);
    }
    if (userName.present) {
      map['user_name'] = Variable<String?>(userName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserTableCompanion(')
          ..write('id: $id, ')
          ..write('token: $token, ')
          ..write('userName: $userName')
          ..write(')'))
        .toString();
  }
}

class $UserTableTable extends UserTable
    with TableInfo<$UserTableTable, UserRow> {
  final GeneratedDatabase _db;
  final String? _alias;
  $UserTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'id', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _tokenMeta = const VerificationMeta('token');
  late final GeneratedColumn<String?> token = GeneratedColumn<String?>(
      'token', aliasedName, false,
      typeName: 'TEXT', requiredDuringInsert: true);
  final VerificationMeta _userNameMeta = const VerificationMeta('userName');
  late final GeneratedColumn<String?> userName = GeneratedColumn<String?>(
      'user_name', aliasedName, true,
      typeName: 'TEXT', requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, token, userName];
  @override
  String get aliasedName => _alias ?? 'user_table';
  @override
  String get actualTableName => 'user_table';
  @override
  VerificationContext validateIntegrity(Insertable<UserRow> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('token')) {
      context.handle(
          _tokenMeta, token.isAcceptableOrUnknown(data['token']!, _tokenMeta));
    } else if (isInserting) {
      context.missing(_tokenMeta);
    }
    if (data.containsKey('user_name')) {
      context.handle(_userNameMeta,
          userName.isAcceptableOrUnknown(data['user_name']!, _userNameMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserRow map(Map<String, dynamic> data, {String? tablePrefix}) {
    return UserRow.fromData(data, _db,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $UserTableTable createAlias(String alias) {
    return $UserTableTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $SearchesTable searches = $SearchesTable(this);
  late final $UserTableTable userTable = $UserTableTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [searches, userTable];
}

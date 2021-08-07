// import 'package:moor_flutter/moor_flutter.dart';
// import 'package:pharma_flutter/infrastructure/core/database/moor_database.dart';

// part 'user_dao.g.dart';

// @UseDao(tables: [UserTable])
// class UserDao extends DatabaseAccessor<AppDatabase> with _$UserDaoMixin {
//   final AppDatabase db;

//   // Called by the AppDatabase class
//   UserDao(this.db) : super(db);

//   Future<List<UserRow>> getUser() => select(userTable).get();
//   Future insertUser(UserRow userRow) => into(userTable).insert(userRow);
//   Future deleteUser() => delete(userTable).go();
// }

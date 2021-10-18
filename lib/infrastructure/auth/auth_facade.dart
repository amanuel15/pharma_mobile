import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pharma_flutter/domain/auth/auth_failure.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:pharma_flutter/domain/auth/i_auth_facade.dart';
import 'package:pharma_flutter/domain/core/i_database_facade.dart';
import 'package:pharma_flutter/domain/core/unit.dart';
import 'package:pharma_flutter/domain/auth/value_objects.dart';
import 'package:pharma_flutter/domain/auth/user.dart';
import 'package:pharma_flutter/infrastructure/core/database/moor_database.dart';

@LazySingleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  final Dio _dio;
  final IDatabaseFacade _databaseFacade;
  final host = 'http://10.0.2.2:3000';

  AuthFacade(this._dio, this._databaseFacade);

  @override
  Future<User?> getSignedInUser() async {
    try {
      User? possibleUser = await _databaseFacade.getUser();
      return possibleUser;
    } catch (e) {
      print('Couldn\'t find a signed in user!!!');
      return null;
    }
  }

  @override
  Future<Result<AuthFailure, Result<User, Unit>>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress,
      required Password password,
      required UserName userName}) async {
    Response response;
    try {
      response = await _dio.post(
        '${host}/client/user/register',
        data: {
          'email': emailAddress.getOrCrash(),
          'password': password.getOrCrash(),
          'name': userName.getOrCrash(),
        },
      );
      print(response.data);
      return Success(Success(unit));
    } on DioError catch (e) {
      print(e.response?.data.status);
      if (e.response?.data.status == 'Invalid Password')
        return Error(AuthFailure.invalidEmailAndPasswordCombination());
      if (e.response?.data.status ==
          'This Email Is Not Attached To A Verified Account')
        return Error(AuthFailure.emailAddressNotVerified());
      if (e.response?.data.status == 'Unknown Error')
        return Error(AuthFailure.serverError());
      else
        return Error(AuthFailure.invalidEmailAndPasswordCombination());
      //return Error(AuthFailure.serverError());
    }
  }

  @override
  Future<Result<AuthFailure, Result<User, Unit>>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    Response response;
    try {
      response = await _dio.post(
        '${host}/client/user/login',
        data: {
          'email': emailAddress.getOrCrash(),
          'password': password.getOrCrash()
        },
        options: Options(
          headers: {
            'Machine-Id': '069a589b-a5e3-4eaf-85d5-bd91060d2e8b',
          },
        ),
      );
      print(response.data);
      try {
        await _databaseFacade.insertUser(
          UserRow(
            id: response.data['id'].toString(),
            userName: response.data['userName'].toString(),
          ),
          response.data['X-Access-Token'].toString(),
        );
      } catch (e) {
        print('Could not persist user to Database!!!');
      }
      return Success(
        Error(
          User(
            id: response.data['id'],
            token: response.data['X-Access-Token'],
            userName: response.data['userName'],
          ),
        ),
      );
    } on DioError catch (e) {
      //print(e.response?.data);
      if (e.response?.data['status'] == 'Invalid Password')
        return Error(AuthFailure.invalidEmailAndPasswordCombination());
      if (e.response?.data['status'] ==
          'This Email Is Not Attached To A Verified Account')
        return Error(AuthFailure.emailAddressNotVerified());
      if (e.response?.data['status'] == 'Unknown Error')
        return Error(AuthFailure.serverError());
      else
        return Error(AuthFailure.invalidEmailAndPasswordCombination());
      //return Error(AuthFailure.serverError());
    }
  }

  @override
  Future<Result<AuthFailure, Result<User, Unit>>> signInWithGoogle() {
    // TODO: implement signInWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<void> signOut() async {
    await _databaseFacade.deleteUser();
  }
}

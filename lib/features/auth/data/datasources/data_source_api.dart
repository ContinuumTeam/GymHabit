import 'package:gymhabit/core/error/failure.dart';
import 'package:gymhabit/features/auth/data/datasources/do_login_datasouce.dart';
import 'package:gymhabit/features/auth/data/models/user_model.dart';
import 'package:dio/dio.dart';

class DataSourceApi implements DoLoginDataSource {
  final Dio _dio;

  DataSourceApi(this._dio);

  @override
  Future<UserModel> doLogin({
    required String email,
    required String password,
  }) async {
    try {
      var response = await _dio.post('http://www.api.com/user', data: {
        "email": email,
        "password": password,
      });
      return UserModel.fromMap(response.data);
    } catch (error) {
      throw ServerFailure();
    }
  }
}

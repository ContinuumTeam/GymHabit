import 'package:gymhabit/features/auth/data/datasources/do_login_datasouce.dart';
import 'package:gymhabit/features/auth/domain/entities/user.dart';
import 'package:gymhabit/core/error/failure.dart';
import 'package:gymhabit/features/auth/domain/repositories/do_login_repository_interface.dart';
import 'package:dartz/dartz.dart';

class DoLoginRepository implements DoLoginRepositoryInterface {
  final DoLoginDataSource _dataSource;

  DoLoginRepository(this._dataSource);

  @override
  Future<Either<Failure, User>> doLogin({
    required String email,
    required String password,
  }) async {
    try {
      var result = await _dataSource.doLogin(email: email, password: password);
      return Right(result);
    } on Failure catch (error) {
      return Left(error);
    }
  }
}

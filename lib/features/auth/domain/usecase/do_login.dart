import 'package:gymhabit/core/error/failure.dart';
import 'package:gymhabit/core/usecase/usecase.dart';
import 'package:gymhabit/features/auth/domain/entities/user.dart';
import 'package:dartz/dartz.dart';

import '../repositories/do_login_repository_interface.dart';

class DologinParams {
  final String email;
  final String password;

  DologinParams({required this.email, required this.password});
}

class DoLogin extends UseCase<User, DologinParams> {
  final DoLoginRepositoryInterface _repository;

  DoLogin(this._repository);
  @override
  Future<Either<Failure, User>> call(DologinParams params) async {
    return await _repository.doLogin(
      email: params.email,
      password: params.password,
    );
  }
}

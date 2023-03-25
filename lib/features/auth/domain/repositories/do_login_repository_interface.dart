import 'package:clean_arch_flutter/core/error/failure.dart';
import 'package:clean_arch_flutter/features/auth/domain/entities/user.dart';
import 'package:dartz/dartz.dart';

abstract class DoLoginRepositoryInterface {
  Future<Either<Failure, User>> doLogin({
    required String email,
    required String password,
  });
}

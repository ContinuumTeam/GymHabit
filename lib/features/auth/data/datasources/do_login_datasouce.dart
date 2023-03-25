import 'package:clean_arch_flutter/features/auth/domain/entities/user.dart';

abstract class DoLoginDataSource {
  Future<User> doLogin({
    required String email,
    required String password,
  });
}

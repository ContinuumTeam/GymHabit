import 'package:gymhabit/features/auth/domain/entities/user.dart';

abstract class DoLoginDataSource {
  Future<User> doLogin({
    required String email,
    required String password,
  });
}

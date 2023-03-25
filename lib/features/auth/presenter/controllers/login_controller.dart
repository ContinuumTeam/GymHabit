import 'package:clean_arch_flutter/features/auth/domain/entities/user.dart';
import 'package:clean_arch_flutter/features/auth/domain/usecase/do_login.dart';

class LoginController {
  final DoLogin _doLogin;

  LoginController(this._doLogin);

  Future<User> doLogin({
    required String email,
    required String password,
  }) async {
    var response = await _doLogin(
      DologinParams(
        email: email,
        password: password,
      ),
    );

    var fold = response.fold(
      (left) => throw Exception(left.message),
      (right) => right,
    );

    // ignore: unnecessary_type_check
    if (fold is User) {
      return fold;
    } else {
      throw Exception('Error');
    }
  }
}

import 'package:gymhabit/core/error/failure.dart';
import 'package:gymhabit/features/auth/domain/entities/user.dart';
import 'package:gymhabit/features/auth/domain/repositories/do_login_repository_interface.dart';
import 'package:gymhabit/features/auth/domain/usecase/do_login.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class DoLoginRepositoryMock extends Mock
    implements DoLoginRepositoryInterface {}

void main() {
  DoLoginRepositoryMock doLoginRepository = DoLoginRepositoryMock();
  DoLogin doLogin = DoLogin(doLoginRepository);

  test("Should be return login sucess", () async {
    when(() => doLoginRepository.doLogin(
          email: 'email@email.com',
          password: 'Senha@123',
        )).thenAnswer(
      (_) async => Right(fakeUser),
    );

    var result = await doLogin(DologinParams(
      email: "email@email.com",
      password: "Senha@123",
    ));

    expect(result, isA<Right>());
    expect(result, Right(fakeUser));
    verify(
      () => doLoginRepository.doLogin(
        email: 'email@email.com',
        password: 'Senha@123',
      ),
    ).called(1);
    verifyNoMoreInteractions(doLoginRepository);
  });

  test("Should be return a login failure", () async {
    when(
      () => doLoginRepository.doLogin(
        email: 'email@email.com',
        password: 'Senha@123',
      ),
    ).thenAnswer((_) async => Left(LoginFailure()));

    var result = await doLogin(DologinParams(
      email: "email@email.com",
      password: "Senha@123",
    ));

    expect(result, isA<Left>());
    expect(result, Left(LoginFailure()));
    verify(
      () => doLoginRepository.doLogin(
        email: 'email@email.com',
        password: 'Senha@123',
      ),
    ).called(1);
    verifyNoMoreInteractions(doLoginRepository);
  });
}

var fakeUser = User(
  name: "fake name",
  bornDate: DateTime.now(),
  pictureUrl: 'https://avatars.githubusercontent.com/u/94790993?v=4',
  email: "email@email.com",
);

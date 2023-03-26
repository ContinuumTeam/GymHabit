import 'package:gymhabit/core/error/failure.dart';
import 'package:gymhabit/features/auth/data/datasources/do_login_datasouce.dart';
import 'package:gymhabit/features/auth/data/repositories/do_login_repository.dart';
import 'package:gymhabit/features/auth/domain/entities/user.dart';
import 'package:gymhabit/features/auth/domain/repositories/do_login_repository_interface.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class DoLoginDataSourceMock extends Mock implements DoLoginDataSource {}

void main() {
  DoLoginDataSource dataSource = DoLoginDataSourceMock();
  DoLoginRepositoryInterface repository = DoLoginRepository(dataSource);

  test('Should be success on login', () async {
    when(
      () => dataSource.doLogin(
        email: any(named: 'email'),
        password: any(named: 'password'),
      ),
    ).thenAnswer((_) async => fakeUser);

    var result = await repository.doLogin(
      email: "email@email.com",
      password: "password123",
    );

    expect(result, isA<Right>());
    expect(result, Right(fakeUser));
    verify(
      () => dataSource.doLogin(
        email: any(named: 'email'),
        password: any(named: 'password'),
      ),
    ).called(1);
    verifyNoMoreInteractions(dataSource);
  });

  test('Should be throw error on login', () async {
    when(
      () => dataSource.doLogin(
        email: any(named: 'email'),
        password: any(named: 'password'),
      ),
    ).thenThrow(LoginFailure());

    var result = await repository.doLogin(
      email: "email@email.com",
      password: "password123",
    );

    expect(result, isA<Left>());
    expect(result, Left(LoginFailure()));
    verify(
      () => dataSource.doLogin(
        email: any(named: 'email'),
        password: any(named: 'password'),
      ),
    ).called(1);
    verifyNoMoreInteractions(dataSource);
  });
}

var fakeUser = User(
  name: "fake name",
  bornDate: DateTime.now(),
  pictureUrl: 'https://avatars.githubusercontent.com/u/94790993?v=4',
  email: "email@email.com",
);

import 'package:clean_arch_flutter/core/error/failure.dart';
import 'package:clean_arch_flutter/features/auth/data/datasources/data_source_api.dart';
import 'package:clean_arch_flutter/features/auth/data/models/user_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class DioMock extends Mock implements Dio {}

var fakeUser = {
  "name": "fake name",
  "bornDate": DateTime(2023, 3, 13).toIso8601String(),
  "pictureUrl": 'https://avatars.githubusercontent.com/u/94790993?v=4',
  "email": "email@email.com",
};

void main() {
  var dio = DioMock();
  var dataSource = DataSourceApi(dio);

  test("Shoud do login on API", () async {
    when(
      () => dio.post(any(), data: {
        "email": 'email@mail.com',
        "password": 'password@123',
      }),
    ).thenAnswer(
      (invocation) => Future.value(
        Response(requestOptions: RequestOptions(path: ''), data: fakeUser),
      ),
    );

    UserModel user = await dataSource.doLogin(
      email: 'email@mail.com',
      password: 'password@123',
    );
    expect(user.toMap(), fakeUser);
    verify(
      () => dio.post(any(), data: {
        "email": 'email@mail.com',
        "password": 'password@123',
      }),
    ).called(1);

    verifyNoMoreInteractions(dio);
  });

  test("Shoud get error when try do login with API", () async {
    when(
      () => dio.post(any(), data: {
        "email": 'email@mail.com',
        "password": 'password@123',
      }),
    ).thenThrow(ServerFailure());

    expect(
      () async => await dataSource.doLogin(
        email: 'email@mail.com',
        password: 'password@123',
      ),
      throwsA(isA<ServerFailure>()),
    );

    verify(
      () => dio.post(any(), data: {
        "email": 'email@mail.com',
        "password": 'password@123',
      }),
    ).called(1);

    verifyNoMoreInteractions(dio);
  });
}

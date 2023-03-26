import 'package:gymhabit/features/auth/data/models/user_model.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(() => {TestWidgetsFlutterBinding.ensureInitialized()});

  test("Should be transform model to map", () {
    var model = UserModel(
      name: "fake name",
      bornDate: DateTime(2021, 6, 1),
      pictureUrl: "fake picture",
      email: "fake@mail.com",
    );
    var map = model.toMap();
    expect(map, fakeUser);
  });

  test("Should be transform model to JSON", () async {
    var model = UserModel(
      name: "fake name",
      bornDate: DateTime(2021, 6, 1),
      pictureUrl: "fake picture",
      email: "fake@mail.com",
    );

    var data = await rootBundle.loadString('assets/mock/user.json');
    var userJson = model.toJson();
    var user = UserModel.fromJson(data);

    expect(user.toJson(), userJson);
  });

  test("Should be get user from JSON", () async {
    var model = UserModel(
      name: "fake name",
      bornDate: DateTime(2021, 6, 1),
      pictureUrl: "fake picture",
      email: "fake@mail.com",
    );

    var data = await rootBundle.loadString('assets/mock/user.json');
    var userJson = UserModel.fromJson(data);

    expect(userJson, model);
  });

  test("Should be get user from map", () async {
    var model = UserModel(
      name: "fake name",
      bornDate: DateTime(2021, 6, 1),
      pictureUrl: "fake picture",
      email: "fake@mail.com",
    );

    var userJson = UserModel.fromMap(fakeUser);

    expect(userJson, model);
  });
}

var fakeUser = {
  "name": "fake name",
  "bornDate": DateTime(2021, 6, 1).toIso8601String(),
  "pictureUrl": 'fake picture',
  "email": "fake@mail.com",
};

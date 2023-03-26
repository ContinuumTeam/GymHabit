import 'dart:convert';

import 'package:gymhabit/features/auth/domain/entities/user.dart';

class UserModel extends User {
  const UserModel({
    required String name,
    required DateTime bornDate,
    required String pictureUrl,
    required String email,
  }) : super(
          name: name,
          bornDate: bornDate,
          email: email,
          pictureUrl: pictureUrl,
        );

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'bornDate': bornDate.toIso8601String(),
      'email': email,
      'pictureUrl': pictureUrl,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'],
      bornDate: DateTime.parse(map['bornDate']),
      email: map['email'],
      pictureUrl: map['pictureUrl'],
    );
  }

  String toJson() => json.encode(toMap());
  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(jsonDecode(source));
}

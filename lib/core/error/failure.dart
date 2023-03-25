import 'package:equatable/equatable.dart';

class Failure extends Equatable implements Exception {
  final String? message;
  const Failure({this.message});

  @override
  List<dynamic> get props => [message];
}

class ServerFailure extends Failure {
  @override
  String get message => "Erro interno!! Nao foi possivel processar seus dados";
}

class NotFoundFailure extends Failure {
  @override
  String get message => "Nao foi possivel encontrar o registro";
}

class LoginFailure extends Failure {
  @override
  String get message => "User or password incorrect";
}

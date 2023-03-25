import 'package:clean_arch_flutter/features/auth/data/datasources/data_source_api.dart';
import 'package:clean_arch_flutter/features/auth/data/datasources/do_login_datasouce.dart';
import 'package:clean_arch_flutter/features/auth/data/repositories/do_login_repository.dart';
import 'package:clean_arch_flutter/features/auth/domain/repositories/do_login_repository_interface.dart';
import 'package:clean_arch_flutter/features/auth/domain/usecase/do_login.dart';
import 'package:clean_arch_flutter/features/auth/presenter/controllers/login_controller.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

class ContainerInjection {
  static void init() {
    getIt.registerLazySingleton<Dio>((() => Dio()));
    getIt.registerLazySingleton<DoLoginDataSource>(
        (() => DataSourceApi(getIt.get())));
    getIt.registerLazySingleton<DoLoginRepositoryInterface>(
        (() => DoLoginRepository(getIt.get())));
    getIt.registerLazySingleton<DoLogin>((() => DoLogin(getIt.get())));
    getIt
        .registerFactory<LoginController>((() => LoginController(getIt.get())));
  }
}

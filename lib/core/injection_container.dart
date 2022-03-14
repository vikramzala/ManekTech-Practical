import 'package:get_it/get_it.dart';
import 'package:manektech_practical_task/feature/product_list/bloc/product_bloc.dart';
import 'package:dio/dio.dart';
import 'package:connectivity/connectivity.dart';
import 'dart:ffi';
import 'package:logger/logger.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! External /* All the other required external injection are embedded here */
  await _initExternalDependencies();

  // Repository /* All the repository injection are embedded here */
  _initRepositories();

  // Bloc /* All the bloc injection are embedded here */
  _initBlocs();
}

void _initBlocs() {
  sl.registerFactory(() => ProductBloc(repository: sl()));
}

void _initRepositories() {}

Future<void> _initExternalDependencies() async {
  sl.registerLazySingleton(() => Dio());
  // sl.registerLazySingleton(() => GetIt.I());
  sl.registerLazySingleton(() => Connectivity());
  sl.registerLazySingleton(() => Logger());
  // sl.registerLazySingleton(() => Bloc);
  sl.registerLazySingleton(() => Dart_CObject());
}

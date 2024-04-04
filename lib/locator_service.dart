import 'package:careme24/dangerous_icons/bloc/forecast_bloc/forecast_bloc.dart';
import 'package:careme24/dangerous_icons/logic/datasourses/dangerous_icons_remote_datasource.dart';
import 'package:careme24/dangerous_icons/logic/repositories/dangerous_icons_repository.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'auth/bloc/auth_bloc/auth_bloc.dart';
import 'auth/logic/datasources/auth_local_datasource.dart';
import 'auth/logic/datasources/auth_remote_datasource.dart';
import 'auth/logic/repositories/auth_repository.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //Cubit/Bloc

  sl
    ..registerFactory(
      () => AuthBloc(authRepository: sl()),
    )
    ..registerFactory(
      () => ForecastBloc(dangerousIconsRepository: sl()),
    )

    //Repos
    ..registerLazySingleton<IAuthRepository>(
      () => AuthRepository(
        authLocalDatasource: sl(),
        authRemoteDatasource: sl(),
      ),
    )
    ..registerLazySingleton<IDangerousIconsRepository>(
      () => DangerousIconsRepository(
        dangerousIconsRemoteDatasource: sl(),
      ),
    )
    ..registerLazySingleton<IAuthLocalDatasource>(
      () => AuthLocalDatasource(sharedPreferences: sl()),
    )
    ..registerLazySingleton<IAuthRemoteDatasource>(
      () => AuthRemoteDatasource(client: sl()),
    )
    ..registerLazySingleton<IDangerousIconsRemoteDatasource>(
      () => DangerousIconsRemoteDatasource(client: sl()),
    );

  //External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);

  // ignore: cascade_invocations
  sl.registerLazySingleton(Dio.new);

  //Router
  // ignore: cascade_invocations
//  sl.registerLazySingleton<AppRouter>(AppRouter.new);
}

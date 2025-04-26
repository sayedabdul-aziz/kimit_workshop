import 'package:get_it/get_it.dart';
import 'package:kimit_workshop/features/auth/data/data_source/remote_data_source.dart';
import 'package:kimit_workshop/features/auth/data/repository/auth_repo_impl.dart';
import 'package:kimit_workshop/features/auth/domain/use_cases/login_use_case.dart';
import 'package:kimit_workshop/features/auth/presentation/cubit/auth_cubit.dart';

var locator = GetIt.instance;

setupLocator() {
  // register remote data source
  locator.registerLazySingleton(() => AuthRemoteDataSource());

  // register repository
  locator
      .registerLazySingleton(() => AuthRepoImpl(remoteDataSource: locator()));

  // register use cases

  locator.registerLazySingleton(() => LoginUseCase(repo: locator()));

  // register cubit
  locator.registerFactory(() => AuthCubit(loginUseCase: locator()));
}

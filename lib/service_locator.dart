import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:github_user_search/features/search_user/data/remote_data_source.dart';
import 'package:github_user_search/features/search_user/presentation/bloc/repo_bloc.dart';
import 'package:github_user_search/features/search_user/presentation/bloc/search_users_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // BLoC / Cubit
  sl.registerLazySingleton(
    () => SearchUsersBloc(
      sl<RemoteDataSource>(),
    ),
  );

  sl.registerLazySingleton(() => RepoBloc(
        sl<RemoteDataSource>(),
      ));

  // Repository
  sl.registerLazySingleton<RemoteDataSource>(
    () => RemoteDataSource(
      sl(),
    ),
  );

  // Core

  sl.registerLazySingleton(() => Dio());

  /////////////////////////////////////////////////////////////

  // advanced

  Dio dio = Dio();
  final token = dotenv.env['GitHub_token'];
  dio.options.headers['Authorization'] = 'Bearer $token';
}

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:github_user_search/features/search_user/data/remote_data_source.dart';
import 'package:github_user_search/features/search_user/presentation/bloc/followers_cubit.dart';
import 'package:github_user_search/features/search_user/presentation/bloc/repo_bloc.dart';
import 'package:github_user_search/features/search_user/presentation/bloc/search_users_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // BLoC / Cubit
  sl.registerLazySingleton(
    () => SearchUsersBloc(
      sl<RemoteDataSource>(),
      sl<FollowersCubit>(),
    ),
  );

  sl.registerLazySingleton(() => RepoBloc(
        sl<RemoteDataSource>(),
      ));

  sl.registerLazySingleton(
    () => FollowersCubit(
      remoteDataSource: sl<RemoteDataSource>(),
    ),
  );

  // Core
  final dio = Dio();
  final token = dotenv.env['GitHub_token'];
  if (token != null) {
    dio.options.headers['Authorization'] = 'Bearer $token';
  } else {
    throw Exception('GitHub token is not set in .env file');
  }

  sl.registerSingleton(() => dio);

  // Repository
  final remoteDataSource = RemoteDataSource(dio);
  sl.registerSingleton<RemoteDataSource>(remoteDataSource);
}

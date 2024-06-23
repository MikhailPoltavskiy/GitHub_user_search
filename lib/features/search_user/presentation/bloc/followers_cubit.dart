import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_user_search/features/search_user/data/remote_data_source.dart';

class FollowersCubit extends Cubit<Map<String, String>> {
  FollowersCubit({required RemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource,
        super({});

  final RemoteDataSource _remoteDataSource;

  Future<void> getFollowersCount(String followersUrl) async {
    try {
      final count = await _remoteDataSource.fetchCountFollowers(followersUrl);
      emit({...state, followersUrl: count ?? '0'});
    } catch (error) {
      if (kDebugMode) {
        print(error);
      }
    }
  }
}

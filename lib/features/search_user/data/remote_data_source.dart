import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:github_user_search/features/search_user/models/repo_dto.dart';
import 'package:github_user_search/features/search_user/models/repo_entity.dart';
import 'package:github_user_search/features/search_user/models/user_dto.dart';
import 'package:github_user_search/features/search_user/models/user_entity.dart';

class RemoteDataSource {
  RemoteDataSource(
    this._dio,
  );

  final Dio _dio;
  int countFollowers = 0;
  Future<List<UserEntity>> searchUsers(String query) async {
    const url = 'https://api.github.com/search/users';
    final response = await _dio.get(url, queryParameters: {
      'q': query,
    });

    if (response.statusCode == 200) {
      final List<UserDto> userDtos = (response.data['items'] as List).map((item) {
        // item as Map<String, dynamic>;
        var followersUrl = item['followers_url'];

        // print('followersUrl: $followersUrl');
        var itemOne = UserDto.fromJson(item as Map<String, dynamic>);
        // print('followersUrl: ${itemOne.followersUrl}');
        var itemTwo = itemOne.copyWith(followersCount: 5);
        // print('itemOne: $itemTwo');
        return itemOne;
      }).toList();

      for (var user in userDtos) {
        countFollowers = 0;
        // var followersCount = await fetchCountFollowers(user.followersUrl);
        // print(followersCount);ztx
      }
      final usersList = userDtos.map((dto) => dto.toEntity()).toList();

      // String? linkHeader = response.headers.value('Link');
      // if (linkHeader != null) {
      //   String? nextUrl = parseLinkHeader(linkHeader);
      //   print('Nex URL: $nextUrl');
      // }

      if (kDebugMode) {
        print(usersList.first);
      }
      return usersList;
    } else {
      throw Exception('Failed to load users');
    }
  }

  Future<int> fetchCountFollowers(String url) async {
    final response = await _dio.get(url);

    if (response.statusCode == 200) {
      final responseLenth = (response.data as List?)?.length;
      countFollowers = countFollowers + (responseLenth ?? 0);

      // String? linkHeader = response.headers.value('Link');
      // if (linkHeader != null) {
      //   String? nextUrl = parseLinkHeader(linkHeader);
      //   if (nextUrl != null) {
      //     fetchCountFollowers(nextUrl);
      //   }
      //   // print('Nex URL: $nextUrl');
      // }
    }
    return countFollowers;
  }

  Future<ReposListEntity> fetchUserRepos(String url) async {
    final response = await _dio.get(url);

    if (response.statusCode == 200) {
      ReposListDto reposDto = ReposListDto.fromJson(response.data as List<dynamic>);
      String? linkHeader = response.headers.value('Link');
      String? nextUrl = linkHeader != null ? parseLinkHeader(linkHeader) : null;

      return reposDto.copyWith(nextPage: nextUrl).toEntity();
    } else {
      throw Exception('Failed to load repos');
    }
  }

  String? parseLinkHeader(String linkHeader) {
    final links = linkHeader.split(',');

    for (var link in links) {
      final match = RegExp(r'<(.*)>; rel="(.*)"').firstMatch(link.trim());
      if (match != null) {
        final url = match.group(1);
        final rel = match.group(2);
        if (rel == 'next') {
          return url;
        }
      }
    }
    return null;
  }
}

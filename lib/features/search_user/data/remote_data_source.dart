import 'package:dio/dio.dart';
import 'package:github_user_search/features/search_user/models/repo_dto.dart';
import 'package:github_user_search/features/search_user/models/repo_entity.dart';
import 'package:github_user_search/features/search_user/models/user_dto.dart';
import 'package:github_user_search/features/search_user/models/user_entity.dart';

class RemoteDataSource {
  RemoteDataSource(
    this._dio,
  );

  final Dio _dio;

  Future<UsersListEntity> searchUsers(String query) async {
    const url = 'https://api.github.com/search/users';
    final response = await _dio.get(url, queryParameters: {
      'q': query,
    });

    if (response.statusCode == 200) {
      UsersListDto usersDto = UsersListDto.fromJson(response.data['items'] as List<dynamic>);
      String? linkHeader = response.headers.value('Link');
      String? nextUrl = linkHeader != null ? parseLinkHeader(linkHeader) : null;

      return usersDto.copyWith(nextPage: nextUrl).toEntity();
    } else {
      throw Exception('Failed to load users');
    }
  }

  Future<UsersListEntity> updateSearchUsers(String url) async {
    final response = await _dio.get(url);

    if (response.statusCode == 200) {
      UsersListDto usersDto = UsersListDto.fromJson(response.data['items'] as List<dynamic>);
      String? linkHeader = response.headers.value('Link');
      String? nextUrl = linkHeader != null ? parseLinkHeader(linkHeader) : null;

      return usersDto.copyWith(nextPage: nextUrl).toEntity();
    } else {
      throw Exception('Failed to load users');
    }
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

  Future<String?> fetchCountFollowers(String url) async {
    final response = await _dio.get(url, queryParameters: {
      'per_page': 1,
    });

    if (response.statusCode == 200) {
      String? linkHeader = response.headers.value('Link');
      String? lastPage = linkHeader != null ? parseLastPage(linkHeader) : null;
      print('LastPage: $lastPage');
      return lastPage;
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

  String? parseLastPage(String linkHeader) {
    final links = linkHeader.split(',');

    for (var link in links) {
      final match = RegExp(r'<(.*)>; rel="(.*)"').firstMatch(link.trim());
      if (match != null) {
        final url = match.group(1);
        final rel = match.group(2);
        if (rel == 'last' && url != null) {
          final uri = Uri.parse(url);
          return uri.queryParameters['page'];
        }
      }
    }
    return null;
  }
}

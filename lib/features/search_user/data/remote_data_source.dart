import 'package:dio/dio.dart';
import 'package:github_user_search/features/search_user/models/repo_dto.dart';
import 'package:github_user_search/features/search_user/models/repo_entity.dart';
import 'package:github_user_search/features/search_user/models/user_dto.dart';
import 'package:github_user_search/features/search_user/models/user_entity.dart';

class RemoteDataSource {
  RemoteDataSource(this._dio);

  final Dio _dio;

  Future<UsersListEntity> searchUsers(String query) async {
    const url = 'https://api.github.com/search/users';
    return _fetchUsers(url, queryParameters: {'q': query});
  }

  Future<UsersListEntity> updateSearchUsers(String url) async {
    return _fetchUsers(url);
  }

  Future<UsersListEntity> _fetchUsers(String url, {Map<String, dynamic>? queryParameters}) async {
    final response = await _dio.get(url, queryParameters: queryParameters);

    if (response.statusCode == 200) {
      UsersListDto usersDto = UsersListDto.fromJson(response.data['items'] as List<dynamic>);
      String? linkHeader = response.headers.value('Link');
      String? nextUrl = linkHeader != null ? _parseLinkHeader(linkHeader, 'next') : null;

      return usersDto.copyWith(nextPage: nextUrl).toEntity();
    } else {
      throw Exception('Failed to load users: ${response.statusMessage}');
    }
  }

  Future<ReposListEntity> fetchUserRepos(String url) async {
    final response = await _dio.get(url);

    if (response.statusCode == 200) {
      ReposListDto reposDto = ReposListDto.fromJson(response.data as List<dynamic>);
      String? linkHeader = response.headers.value('Link');
      String? nextUrl = linkHeader != null ? _parseLinkHeader(linkHeader, 'next') : null;

      return reposDto.copyWith(nextPage: nextUrl).toEntity();
    } else {
      throw Exception('Failed to load repos: ${response.statusMessage}');
    }
  }

  Future<String?> fetchCountFollowers(String url) async {
    final response = await _dio.get(url, queryParameters: {'per_page': 1});

    if (response.statusCode == 200) {
      String? linkHeader = response.headers.value('Link');
      String? lastPage = linkHeader != null ? _parseLastPage(linkHeader) : null;

      return lastPage;
    } else {
      throw Exception('Failed to load followers count: ${response.statusMessage}');
    }
  }

  String? _parseLinkHeader(String linkHeader, String relType) {
    final links = linkHeader.split(',');

    for (var link in links) {
      final match = RegExp(r'<(.*)>; rel="(.*)"').firstMatch(link.trim());
      if (match != null) {
        final url = match.group(1);
        final rel = match.group(2);
        if (rel == relType) {
          return url;
        }
      }
    }
    return null;
  }

  String? _parseLastPage(String linkHeader) {
    final lastUrl = _parseLinkHeader(linkHeader, 'last');
    if (lastUrl != null) {
      final uri = Uri.parse(lastUrl);
      return uri.queryParameters['page'];
    }
    return null;
  }
}

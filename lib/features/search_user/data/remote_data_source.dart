import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:github_user_search/features/search_user/models/user_dto.dart';
import 'package:github_user_search/features/search_user/models/user_entity.dart';

class RemoteDataSource {
  RemoteDataSource(
    this._dio,
  );

  final Dio _dio;

  Future<List<UserEntity>> searchUsers(String query) async {
    const url = 'https://api.github.com/search/users';
    final response = await _dio.get(url, queryParameters: {
      'q': query,
    });

    if (response.statusCode == 200) {
      final List<UserDto> userDtos =
          (response.data['items'] as List).map((item) => UserDto.fromJson(item as Map<String, dynamic>)).toList();
      final usersList = userDtos.map((dto) => dto.toEntity()).toList();
      if (kDebugMode) {
        print(usersList.first);
      }
      return usersList;
    } else {
      throw Exception('Failed to load users');
    }
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repo_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RepoDtoImpl _$$RepoDtoImplFromJson(Map<String, dynamic> json) =>
    _$RepoDtoImpl(
      name: json['name'] as String? ?? '',
      description: json['description'] as String? ?? '',
      commitAt:
          const DateTimeConverter().fromJson(json['pushed_at'] as String?),
      defaultBranch: json['default_branch'] as String? ?? '',
      forksCount: (json['forks_count'] as num?)?.toInt() ?? 0,
      starsCount: (json['stargazers_count'] as num?)?.toInt() ?? 0,
      machineCode: json['language'] as String? ?? '',
    );

Map<String, dynamic> _$$RepoDtoImplToJson(_$RepoDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'pushed_at': const DateTimeConverter().toJson(instance.commitAt),
      'default_branch': instance.defaultBranch,
      'forks_count': instance.forksCount,
      'stargazers_count': instance.starsCount,
      'language': instance.machineCode,
    };

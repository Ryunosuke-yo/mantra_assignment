// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_repo_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetRepoResponse _$GetRepoResponseFromJson(Map<String, dynamic> json) =>
    _GetRepoResponse(
      totalCount: (json['total_count'] as num).toInt(),
      incompleteResults: json['incomplete_results'] as bool,
      items:
          (json['items'] as List<dynamic>)
              .map((e) => GithubReposModel.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$GetRepoResponseToJson(_GetRepoResponse instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'incomplete_results': instance.incompleteResults,
      'items': instance.items,
    };

_GithubReposModel _$GithubReposModelFromJson(Map<String, dynamic> json) =>
    _GithubReposModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      fullName: json['full_name'] as String,
      owner: Owner.fromJson(json['owner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GithubReposModelToJson(_GithubReposModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'full_name': instance.fullName,
      'owner': instance.owner,
    };

_Owner _$OwnerFromJson(Map<String, dynamic> json) => _Owner(
  login: json['login'] as String,
  id: (json['id'] as num).toInt(),
  avatarUrl: json['avatar_url'] as String,
  htmlUrl: json['html_url'] as String,
);

Map<String, dynamic> _$OwnerToJson(_Owner instance) => <String, dynamic>{
  'login': instance.login,
  'id': instance.id,
  'avatar_url': instance.avatarUrl,
  'html_url': instance.htmlUrl,
};

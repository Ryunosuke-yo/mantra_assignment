// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_repo_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetRepoDetailResponse _$GetRepoDetailResponseFromJson(
  Map<String, dynamic> json,
) => _GetRepoDetailResponse(
  name: json['name'] as String?,
  fullName: json['full_name'] as String?,
  owner:
      json['owner'] == null
          ? null
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
  subscribersCount: (json['subscribers_count'] as num?)?.toInt(),
);

Map<String, dynamic> _$GetRepoDetailResponseToJson(
  _GetRepoDetailResponse instance,
) => <String, dynamic>{
  'name': instance.name,
  'full_name': instance.fullName,
  'owner': instance.owner,
  'subscribers_count': instance.subscribersCount,
};

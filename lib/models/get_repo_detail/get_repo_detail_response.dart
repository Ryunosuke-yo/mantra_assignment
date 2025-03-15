// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mantra_assignment/models/get_repo/get_repo_response.dart';

part 'get_repo_detail_response.freezed.dart';
part 'get_repo_detail_response.g.dart';

@freezed
abstract class GetRepoDetailResponse with _$GetRepoDetailResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory GetRepoDetailResponse({
    String? name,
    String? fullName,
    Owner? owner,
    int? subscribersCount,
  }) = _GetRepoDetailResponse;

  factory GetRepoDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$GetRepoDetailResponseFromJson(json);
}

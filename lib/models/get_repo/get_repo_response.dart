// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_repo_response.freezed.dart';
part 'get_repo_response.g.dart';

@freezed
abstract class GetRepoResponse with _$GetRepoResponse {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GetRepoResponse({
    required int totalCount,
    required bool incompleteResults,
    required List<GithubReposModel> items,
  }) = _GetRepoResponse;

  factory GetRepoResponse.fromJson(Map<String, Object?> json) =>
      _$GetRepoResponseFromJson(json);
}

@freezed
abstract class GithubReposModel with _$GithubReposModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory GithubReposModel({
    required int id,
    required String name,
    required String fullName,
    required Owner owner,
  }) = _GithubReposModel;

  factory GithubReposModel.fromJson(Map<String, Object?> json) =>
      _$GithubReposModelFromJson(json);
}

@freezed
abstract class Owner with _$Owner {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Owner({
    required String login,
    required int id,
    required String avatarUrl,
    required String htmlUrl,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}

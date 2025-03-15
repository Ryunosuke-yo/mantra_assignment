import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mantra_assignment/models/get_repo_detail/get_repo_detail_response.dart';
import 'package:mantra_assignment/repository/github_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'detail_view_notifier.g.dart';
part 'detail_view_notifier.freezed.dart';

@riverpod
class DetailViewNotifier extends _$DetailViewNotifier {
  @override
  FutureOr<DetailViewNotifierState> build({
    required String owner,
    required String repo,
  }) async {
    final result = await GithubRepository().getRepoDetail(
      owner: owner,
      repo: repo,
    );
    return DetailViewNotifierState(detail: result);
  }
}

@freezed
abstract class DetailViewNotifierState with _$DetailViewNotifierState {
  factory DetailViewNotifierState({required GetRepoDetailResponse detail}) =
      _DetailViewNotifierState;

  factory DetailViewNotifierState.fromJson(Map<String, dynamic> json) =>
      _$DetailViewNotifierStateFromJson(json);
}

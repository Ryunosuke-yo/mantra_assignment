import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mantra_assignment/models/get_repo/get_repo_response.dart';
import 'package:mantra_assignment/repository/github_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_view_notifier.g.dart';
part 'search_view_notifier.freezed.dart';

@riverpod
class SearchViewNotifier extends _$SearchViewNotifier {
  @override
  FutureOr<SearchViewNotifierState> build() async {
    return SearchViewNotifierState(repoList: []);
  }

  getRepo(String query) async {
    final prev = state.valueOrNull;

    state = AsyncLoading();

    try {
      final response = await GithubRepository().getRepo(query: query);

      state = AsyncData(prev!.copyWith(repoList: response.items));
    } catch (e) {
      state = AsyncError(e, StackTrace.current);
    }
  }
}

@freezed
abstract class SearchViewNotifierState with _$SearchViewNotifierState {
  factory SearchViewNotifierState({required List<GithubReposModel> repoList}) =
      _SearchViewNotifierState;

  factory SearchViewNotifierState.fromJson(Map<String, dynamic> json) =>
      _$SearchViewNotifierStateFromJson(json);
}

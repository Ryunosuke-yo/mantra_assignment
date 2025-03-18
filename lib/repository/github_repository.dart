import 'dart:convert';

import 'package:mantra_assignment/client/api_client.dart';
import 'package:mantra_assignment/models/get_repo/get_repo_response.dart';
import 'package:mantra_assignment/models/get_repo_detail/get_repo_detail_response.dart';

class GithubRepository {
  Future<GetRepoResponse> getRepo({required String query}) async {
    final response = await GithubApiClient().get(
      'search/repositories',
      queryParameters: {'q': query},
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to get repo');
    }

    return GetRepoResponse.fromJson(jsonDecode(response.body));
  }

  Future<GetRepoDetailResponse> getRepoDetail({
    required String owner,
    required String repo,
  }) async {
    final response = await GithubApiClient().get(
      'repos/$owner/$repo',
      queryParameters: {},
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to get repo detail');
    }

    return GetRepoDetailResponse.fromJson(jsonDecode(response.body));
  }
}

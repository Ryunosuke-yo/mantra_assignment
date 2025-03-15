import 'dart:convert';

import 'package:mantra_assignment/client/api_client.dart';
import 'package:mantra_assignment/models/get_repo/get_repo_response.dart';

class GithubRepository {
  Future<GetRepoResponse> getRepo({required String quey}) async {
    final response = await GithubApiClient().get(
      'search/repositories',
      queryParameters: {'q': quey},
    );

    if (response.statusCode != 200) {
      throw Exception('Failed to get repo');
    }

    return GetRepoResponse.fromJson(jsonDecode(response.body));
  }
}

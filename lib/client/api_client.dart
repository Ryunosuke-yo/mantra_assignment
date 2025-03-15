import 'package:http/http.dart' as http;

class GithubApiClient {
  String githubHostName = "api.github.com";

  Future<http.Response> get(
    String pathName, {
    required Map<String, dynamic> queryParameters,
  }) async {
    return await http.get(Uri.https(githubHostName, pathName, queryParameters));
  }
}

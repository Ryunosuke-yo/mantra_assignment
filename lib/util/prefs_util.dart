import 'dart:convert';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'prefs_util.freezed.dart';
part 'prefs_util.g.dart';

enum PrefKey { favRepoList }

@freezed
abstract class SavedFavRepo with _$SavedFavRepo {
  factory SavedFavRepo({String? owner, String? repo, String? avatarUrl}) =
      _SavedFavRepo;

  factory SavedFavRepo.fromJson(Map<String, dynamic> json) =>
      _$SavedFavRepoFromJson(json);
}

class SharedPrefService {
  static final SharedPrefService _instance = SharedPrefService._internal();
  late SharedPreferences _pref;

  // プライベートコンストラクタ（外部からのインスタンス作成を防ぐ）
  SharedPrefService._internal();

  // シングルトンのインスタンスを取得
  static SharedPrefService get instance => _instance;

  // 初期化（アプリ起動時に呼び出す）
  Future<void> init() async {
    _pref = await SharedPreferences.getInstance();
  }

  List<SavedFavRepo> getFavRepoList() {
    final savedList = _pref.getStringList(PrefKey.favRepoList.name) ?? [];

    List<Map<String, dynamic>> decodedList =
        savedList.map((e) => jsonDecode(e) as Map<String, dynamic>).toList();

    return decodedList.map((json) => SavedFavRepo.fromJson(json)).toList();
  }

  bool isFavRepo(SavedFavRepo favRepo) {
    final savedList = _pref.getStringList(PrefKey.favRepoList.name) ?? [];

    List<Map<String, dynamic>> decodedList =
        savedList.map((e) => jsonDecode(e) as Map<String, dynamic>).toList();

    final repoList =
        decodedList.map((json) => SavedFavRepo.fromJson(json)).toList();

    return repoList.contains(favRepo);
  }

  SavedFavRepo getFavRepo(SavedFavRepo favRepo) {
    final savedList = _pref.getStringList(PrefKey.favRepoList.name) ?? [];

    List<Map<String, dynamic>> decodedList =
        savedList.map((e) => jsonDecode(e) as Map<String, dynamic>).toList();

    final repoList =
        decodedList.map((json) => SavedFavRepo.fromJson(json)).toList();

    return repoList.firstWhere((element) {
      return element.owner == favRepo.owner &&
          element.repo == favRepo.repo &&
          element.avatarUrl == favRepo.avatarUrl;
    });
  }

  void removeFavRepo(SavedFavRepo favRepo) async {
    final savedList = _pref.getStringList(PrefKey.favRepoList.name) ?? [];

    final favRepoJson = jsonEncode(favRepo);
    final ss = savedList.contains(favRepoJson);

    savedList.remove(favRepoJson);

    _pref.setStringList(PrefKey.favRepoList.name, savedList);
  }

  void saveFavRepo(SavedFavRepo favRepo) async {
    final savedList = _pref.getStringList(PrefKey.favRepoList.name) ?? [];

    final favRepoJson = jsonEncode(favRepo);

    if (savedList.contains(favRepoJson)) {
      if (kDebugMode) {
        debugPrint('Already saved');
      }
      return;
    }

    _pref.setStringList(PrefKey.favRepoList.name, [...savedList, favRepoJson]);
  }
}

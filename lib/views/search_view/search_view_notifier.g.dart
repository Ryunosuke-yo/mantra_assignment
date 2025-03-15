// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_view_notifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SearchViewNotifierState _$SearchViewNotifierStateFromJson(
  Map<String, dynamic> json,
) => _SearchViewNotifierState(
  repoList:
      (json['repoList'] as List<dynamic>)
          .map((e) => GithubReposModel.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$SearchViewNotifierStateToJson(
  _SearchViewNotifierState instance,
) => <String, dynamic>{'repoList': instance.repoList};

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchViewNotifierHash() =>
    r'864d18138f5248b453ce88ad96edbfb51a2742d6';

/// See also [SearchViewNotifier].
@ProviderFor(SearchViewNotifier)
final searchViewNotifierProvider = AutoDisposeAsyncNotifierProvider<
  SearchViewNotifier,
  SearchViewNotifierState
>.internal(
  SearchViewNotifier.new,
  name: r'searchViewNotifierProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$searchViewNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$SearchViewNotifier =
    AutoDisposeAsyncNotifier<SearchViewNotifierState>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

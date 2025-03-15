// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_view_notifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DetailViewNotifierState _$DetailViewNotifierStateFromJson(
  Map<String, dynamic> json,
) => _DetailViewNotifierState(
  detail: GetRepoDetailResponse.fromJson(
    json['detail'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$DetailViewNotifierStateToJson(
  _DetailViewNotifierState instance,
) => <String, dynamic>{'detail': instance.detail};

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$detailViewNotifierHash() =>
    r'6c6069e39b98444910c7fb89174fef1591793c9b';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$DetailViewNotifier
    extends BuildlessAutoDisposeAsyncNotifier<DetailViewNotifierState> {
  late final String owner;
  late final String repo;

  FutureOr<DetailViewNotifierState> build({
    required String owner,
    required String repo,
  });
}

/// See also [DetailViewNotifier].
@ProviderFor(DetailViewNotifier)
const detailViewNotifierProvider = DetailViewNotifierFamily();

/// See also [DetailViewNotifier].
class DetailViewNotifierFamily
    extends Family<AsyncValue<DetailViewNotifierState>> {
  /// See also [DetailViewNotifier].
  const DetailViewNotifierFamily();

  /// See also [DetailViewNotifier].
  DetailViewNotifierProvider call({
    required String owner,
    required String repo,
  }) {
    return DetailViewNotifierProvider(owner: owner, repo: repo);
  }

  @override
  DetailViewNotifierProvider getProviderOverride(
    covariant DetailViewNotifierProvider provider,
  ) {
    return call(owner: provider.owner, repo: provider.repo);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'detailViewNotifierProvider';
}

/// See also [DetailViewNotifier].
class DetailViewNotifierProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          DetailViewNotifier,
          DetailViewNotifierState
        > {
  /// See also [DetailViewNotifier].
  DetailViewNotifierProvider({required String owner, required String repo})
    : this._internal(
        () =>
            DetailViewNotifier()
              ..owner = owner
              ..repo = repo,
        from: detailViewNotifierProvider,
        name: r'detailViewNotifierProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$detailViewNotifierHash,
        dependencies: DetailViewNotifierFamily._dependencies,
        allTransitiveDependencies:
            DetailViewNotifierFamily._allTransitiveDependencies,
        owner: owner,
        repo: repo,
      );

  DetailViewNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.owner,
    required this.repo,
  }) : super.internal();

  final String owner;
  final String repo;

  @override
  FutureOr<DetailViewNotifierState> runNotifierBuild(
    covariant DetailViewNotifier notifier,
  ) {
    return notifier.build(owner: owner, repo: repo);
  }

  @override
  Override overrideWith(DetailViewNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: DetailViewNotifierProvider._internal(
        () =>
            create()
              ..owner = owner
              ..repo = repo,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        owner: owner,
        repo: repo,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<
    DetailViewNotifier,
    DetailViewNotifierState
  >
  createElement() {
    return _DetailViewNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DetailViewNotifierProvider &&
        other.owner == owner &&
        other.repo == repo;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, owner.hashCode);
    hash = _SystemHash.combine(hash, repo.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin DetailViewNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<DetailViewNotifierState> {
  /// The parameter `owner` of this provider.
  String get owner;

  /// The parameter `repo` of this provider.
  String get repo;
}

class _DetailViewNotifierProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          DetailViewNotifier,
          DetailViewNotifierState
        >
    with DetailViewNotifierRef {
  _DetailViewNotifierProviderElement(super.provider);

  @override
  String get owner => (origin as DetailViewNotifierProvider).owner;
  @override
  String get repo => (origin as DetailViewNotifierProvider).repo;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prefs_util.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SavedFavRepo implements DiagnosticableTreeMixin {

 String? get owner; String? get repo; String? get avatarUrl;
/// Create a copy of SavedFavRepo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SavedFavRepoCopyWith<SavedFavRepo> get copyWith => _$SavedFavRepoCopyWithImpl<SavedFavRepo>(this as SavedFavRepo, _$identity);

  /// Serializes this SavedFavRepo to a JSON map.
  Map<String, dynamic> toJson();

@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SavedFavRepo'))
    ..add(DiagnosticsProperty('owner', owner))..add(DiagnosticsProperty('repo', repo))..add(DiagnosticsProperty('avatarUrl', avatarUrl));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavedFavRepo&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.repo, repo) || other.repo == repo)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,owner,repo,avatarUrl);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SavedFavRepo(owner: $owner, repo: $repo, avatarUrl: $avatarUrl)';
}


}

/// @nodoc
abstract mixin class $SavedFavRepoCopyWith<$Res>  {
  factory $SavedFavRepoCopyWith(SavedFavRepo value, $Res Function(SavedFavRepo) _then) = _$SavedFavRepoCopyWithImpl;
@useResult
$Res call({
 String? owner, String? repo, String? avatarUrl
});




}
/// @nodoc
class _$SavedFavRepoCopyWithImpl<$Res>
    implements $SavedFavRepoCopyWith<$Res> {
  _$SavedFavRepoCopyWithImpl(this._self, this._then);

  final SavedFavRepo _self;
  final $Res Function(SavedFavRepo) _then;

/// Create a copy of SavedFavRepo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? owner = freezed,Object? repo = freezed,Object? avatarUrl = freezed,}) {
  return _then(_self.copyWith(
owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String?,repo: freezed == repo ? _self.repo : repo // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SavedFavRepo with DiagnosticableTreeMixin implements SavedFavRepo {
   _SavedFavRepo({this.owner, this.repo, this.avatarUrl});
  factory _SavedFavRepo.fromJson(Map<String, dynamic> json) => _$SavedFavRepoFromJson(json);

@override final  String? owner;
@override final  String? repo;
@override final  String? avatarUrl;

/// Create a copy of SavedFavRepo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SavedFavRepoCopyWith<_SavedFavRepo> get copyWith => __$SavedFavRepoCopyWithImpl<_SavedFavRepo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SavedFavRepoToJson(this, );
}
@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'SavedFavRepo'))
    ..add(DiagnosticsProperty('owner', owner))..add(DiagnosticsProperty('repo', repo))..add(DiagnosticsProperty('avatarUrl', avatarUrl));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SavedFavRepo&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.repo, repo) || other.repo == repo)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,owner,repo,avatarUrl);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'SavedFavRepo(owner: $owner, repo: $repo, avatarUrl: $avatarUrl)';
}


}

/// @nodoc
abstract mixin class _$SavedFavRepoCopyWith<$Res> implements $SavedFavRepoCopyWith<$Res> {
  factory _$SavedFavRepoCopyWith(_SavedFavRepo value, $Res Function(_SavedFavRepo) _then) = __$SavedFavRepoCopyWithImpl;
@override @useResult
$Res call({
 String? owner, String? repo, String? avatarUrl
});




}
/// @nodoc
class __$SavedFavRepoCopyWithImpl<$Res>
    implements _$SavedFavRepoCopyWith<$Res> {
  __$SavedFavRepoCopyWithImpl(this._self, this._then);

  final _SavedFavRepo _self;
  final $Res Function(_SavedFavRepo) _then;

/// Create a copy of SavedFavRepo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? owner = freezed,Object? repo = freezed,Object? avatarUrl = freezed,}) {
  return _then(_SavedFavRepo(
owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as String?,repo: freezed == repo ? _self.repo : repo // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_repo_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetRepoDetailResponse {

 String? get name; String? get fullName; Owner? get owner; int? get subscribersCount;
/// Create a copy of GetRepoDetailResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetRepoDetailResponseCopyWith<GetRepoDetailResponse> get copyWith => _$GetRepoDetailResponseCopyWithImpl<GetRepoDetailResponse>(this as GetRepoDetailResponse, _$identity);

  /// Serializes this GetRepoDetailResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetRepoDetailResponse&&(identical(other.name, name) || other.name == name)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.subscribersCount, subscribersCount) || other.subscribersCount == subscribersCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,fullName,owner,subscribersCount);

@override
String toString() {
  return 'GetRepoDetailResponse(name: $name, fullName: $fullName, owner: $owner, subscribersCount: $subscribersCount)';
}


}

/// @nodoc
abstract mixin class $GetRepoDetailResponseCopyWith<$Res>  {
  factory $GetRepoDetailResponseCopyWith(GetRepoDetailResponse value, $Res Function(GetRepoDetailResponse) _then) = _$GetRepoDetailResponseCopyWithImpl;
@useResult
$Res call({
 String? name, String? fullName, Owner? owner, int? subscribersCount
});


$OwnerCopyWith<$Res>? get owner;

}
/// @nodoc
class _$GetRepoDetailResponseCopyWithImpl<$Res>
    implements $GetRepoDetailResponseCopyWith<$Res> {
  _$GetRepoDetailResponseCopyWithImpl(this._self, this._then);

  final GetRepoDetailResponse _self;
  final $Res Function(GetRepoDetailResponse) _then;

/// Create a copy of GetRepoDetailResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? fullName = freezed,Object? owner = freezed,Object? subscribersCount = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as Owner?,subscribersCount: freezed == subscribersCount ? _self.subscribersCount : subscribersCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of GetRepoDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OwnerCopyWith<$Res>? get owner {
    if (_self.owner == null) {
    return null;
  }

  return $OwnerCopyWith<$Res>(_self.owner!, (value) {
    return _then(_self.copyWith(owner: value));
  });
}
}


/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _GetRepoDetailResponse implements GetRepoDetailResponse {
   _GetRepoDetailResponse({this.name, this.fullName, this.owner, this.subscribersCount});
  factory _GetRepoDetailResponse.fromJson(Map<String, dynamic> json) => _$GetRepoDetailResponseFromJson(json);

@override final  String? name;
@override final  String? fullName;
@override final  Owner? owner;
@override final  int? subscribersCount;

/// Create a copy of GetRepoDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetRepoDetailResponseCopyWith<_GetRepoDetailResponse> get copyWith => __$GetRepoDetailResponseCopyWithImpl<_GetRepoDetailResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetRepoDetailResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetRepoDetailResponse&&(identical(other.name, name) || other.name == name)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.subscribersCount, subscribersCount) || other.subscribersCount == subscribersCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,fullName,owner,subscribersCount);

@override
String toString() {
  return 'GetRepoDetailResponse(name: $name, fullName: $fullName, owner: $owner, subscribersCount: $subscribersCount)';
}


}

/// @nodoc
abstract mixin class _$GetRepoDetailResponseCopyWith<$Res> implements $GetRepoDetailResponseCopyWith<$Res> {
  factory _$GetRepoDetailResponseCopyWith(_GetRepoDetailResponse value, $Res Function(_GetRepoDetailResponse) _then) = __$GetRepoDetailResponseCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? fullName, Owner? owner, int? subscribersCount
});


@override $OwnerCopyWith<$Res>? get owner;

}
/// @nodoc
class __$GetRepoDetailResponseCopyWithImpl<$Res>
    implements _$GetRepoDetailResponseCopyWith<$Res> {
  __$GetRepoDetailResponseCopyWithImpl(this._self, this._then);

  final _GetRepoDetailResponse _self;
  final $Res Function(_GetRepoDetailResponse) _then;

/// Create a copy of GetRepoDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? fullName = freezed,Object? owner = freezed,Object? subscribersCount = freezed,}) {
  return _then(_GetRepoDetailResponse(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,fullName: freezed == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String?,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as Owner?,subscribersCount: freezed == subscribersCount ? _self.subscribersCount : subscribersCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of GetRepoDetailResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OwnerCopyWith<$Res>? get owner {
    if (_self.owner == null) {
    return null;
  }

  return $OwnerCopyWith<$Res>(_self.owner!, (value) {
    return _then(_self.copyWith(owner: value));
  });
}
}

// dart format on

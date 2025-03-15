// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_view_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DetailViewNotifierState {

 GetRepoDetailResponse get detail;
/// Create a copy of DetailViewNotifierState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DetailViewNotifierStateCopyWith<DetailViewNotifierState> get copyWith => _$DetailViewNotifierStateCopyWithImpl<DetailViewNotifierState>(this as DetailViewNotifierState, _$identity);

  /// Serializes this DetailViewNotifierState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DetailViewNotifierState&&(identical(other.detail, detail) || other.detail == detail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,detail);

@override
String toString() {
  return 'DetailViewNotifierState(detail: $detail)';
}


}

/// @nodoc
abstract mixin class $DetailViewNotifierStateCopyWith<$Res>  {
  factory $DetailViewNotifierStateCopyWith(DetailViewNotifierState value, $Res Function(DetailViewNotifierState) _then) = _$DetailViewNotifierStateCopyWithImpl;
@useResult
$Res call({
 GetRepoDetailResponse detail
});


$GetRepoDetailResponseCopyWith<$Res> get detail;

}
/// @nodoc
class _$DetailViewNotifierStateCopyWithImpl<$Res>
    implements $DetailViewNotifierStateCopyWith<$Res> {
  _$DetailViewNotifierStateCopyWithImpl(this._self, this._then);

  final DetailViewNotifierState _self;
  final $Res Function(DetailViewNotifierState) _then;

/// Create a copy of DetailViewNotifierState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? detail = null,}) {
  return _then(_self.copyWith(
detail: null == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as GetRepoDetailResponse,
  ));
}
/// Create a copy of DetailViewNotifierState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetRepoDetailResponseCopyWith<$Res> get detail {
  
  return $GetRepoDetailResponseCopyWith<$Res>(_self.detail, (value) {
    return _then(_self.copyWith(detail: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _DetailViewNotifierState implements DetailViewNotifierState {
   _DetailViewNotifierState({required this.detail});
  factory _DetailViewNotifierState.fromJson(Map<String, dynamic> json) => _$DetailViewNotifierStateFromJson(json);

@override final  GetRepoDetailResponse detail;

/// Create a copy of DetailViewNotifierState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DetailViewNotifierStateCopyWith<_DetailViewNotifierState> get copyWith => __$DetailViewNotifierStateCopyWithImpl<_DetailViewNotifierState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DetailViewNotifierStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DetailViewNotifierState&&(identical(other.detail, detail) || other.detail == detail));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,detail);

@override
String toString() {
  return 'DetailViewNotifierState(detail: $detail)';
}


}

/// @nodoc
abstract mixin class _$DetailViewNotifierStateCopyWith<$Res> implements $DetailViewNotifierStateCopyWith<$Res> {
  factory _$DetailViewNotifierStateCopyWith(_DetailViewNotifierState value, $Res Function(_DetailViewNotifierState) _then) = __$DetailViewNotifierStateCopyWithImpl;
@override @useResult
$Res call({
 GetRepoDetailResponse detail
});


@override $GetRepoDetailResponseCopyWith<$Res> get detail;

}
/// @nodoc
class __$DetailViewNotifierStateCopyWithImpl<$Res>
    implements _$DetailViewNotifierStateCopyWith<$Res> {
  __$DetailViewNotifierStateCopyWithImpl(this._self, this._then);

  final _DetailViewNotifierState _self;
  final $Res Function(_DetailViewNotifierState) _then;

/// Create a copy of DetailViewNotifierState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? detail = null,}) {
  return _then(_DetailViewNotifierState(
detail: null == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as GetRepoDetailResponse,
  ));
}

/// Create a copy of DetailViewNotifierState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GetRepoDetailResponseCopyWith<$Res> get detail {
  
  return $GetRepoDetailResponseCopyWith<$Res>(_self.detail, (value) {
    return _then(_self.copyWith(detail: value));
  });
}
}

// dart format on

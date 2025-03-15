// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_view_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SearchViewNotifierState {

 List<GithubReposModel> get repoList;
/// Create a copy of SearchViewNotifierState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchViewNotifierStateCopyWith<SearchViewNotifierState> get copyWith => _$SearchViewNotifierStateCopyWithImpl<SearchViewNotifierState>(this as SearchViewNotifierState, _$identity);

  /// Serializes this SearchViewNotifierState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchViewNotifierState&&const DeepCollectionEquality().equals(other.repoList, repoList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(repoList));

@override
String toString() {
  return 'SearchViewNotifierState(repoList: $repoList)';
}


}

/// @nodoc
abstract mixin class $SearchViewNotifierStateCopyWith<$Res>  {
  factory $SearchViewNotifierStateCopyWith(SearchViewNotifierState value, $Res Function(SearchViewNotifierState) _then) = _$SearchViewNotifierStateCopyWithImpl;
@useResult
$Res call({
 List<GithubReposModel> repoList
});




}
/// @nodoc
class _$SearchViewNotifierStateCopyWithImpl<$Res>
    implements $SearchViewNotifierStateCopyWith<$Res> {
  _$SearchViewNotifierStateCopyWithImpl(this._self, this._then);

  final SearchViewNotifierState _self;
  final $Res Function(SearchViewNotifierState) _then;

/// Create a copy of SearchViewNotifierState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? repoList = null,}) {
  return _then(_self.copyWith(
repoList: null == repoList ? _self.repoList : repoList // ignore: cast_nullable_to_non_nullable
as List<GithubReposModel>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SearchViewNotifierState implements SearchViewNotifierState {
   _SearchViewNotifierState({required final  List<GithubReposModel> repoList}): _repoList = repoList;
  factory _SearchViewNotifierState.fromJson(Map<String, dynamic> json) => _$SearchViewNotifierStateFromJson(json);

 final  List<GithubReposModel> _repoList;
@override List<GithubReposModel> get repoList {
  if (_repoList is EqualUnmodifiableListView) return _repoList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_repoList);
}


/// Create a copy of SearchViewNotifierState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchViewNotifierStateCopyWith<_SearchViewNotifierState> get copyWith => __$SearchViewNotifierStateCopyWithImpl<_SearchViewNotifierState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SearchViewNotifierStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchViewNotifierState&&const DeepCollectionEquality().equals(other._repoList, _repoList));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_repoList));

@override
String toString() {
  return 'SearchViewNotifierState(repoList: $repoList)';
}


}

/// @nodoc
abstract mixin class _$SearchViewNotifierStateCopyWith<$Res> implements $SearchViewNotifierStateCopyWith<$Res> {
  factory _$SearchViewNotifierStateCopyWith(_SearchViewNotifierState value, $Res Function(_SearchViewNotifierState) _then) = __$SearchViewNotifierStateCopyWithImpl;
@override @useResult
$Res call({
 List<GithubReposModel> repoList
});




}
/// @nodoc
class __$SearchViewNotifierStateCopyWithImpl<$Res>
    implements _$SearchViewNotifierStateCopyWith<$Res> {
  __$SearchViewNotifierStateCopyWithImpl(this._self, this._then);

  final _SearchViewNotifierState _self;
  final $Res Function(_SearchViewNotifierState) _then;

/// Create a copy of SearchViewNotifierState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? repoList = null,}) {
  return _then(_SearchViewNotifierState(
repoList: null == repoList ? _self._repoList : repoList // ignore: cast_nullable_to_non_nullable
as List<GithubReposModel>,
  ));
}


}

// dart format on

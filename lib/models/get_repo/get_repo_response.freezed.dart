// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_repo_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetRepoResponse {

 int get totalCount; bool get incompleteResults; List<GithubReposModel> get items;
/// Create a copy of GetRepoResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetRepoResponseCopyWith<GetRepoResponse> get copyWith => _$GetRepoResponseCopyWithImpl<GetRepoResponse>(this as GetRepoResponse, _$identity);

  /// Serializes this GetRepoResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetRepoResponse&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.incompleteResults, incompleteResults) || other.incompleteResults == incompleteResults)&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCount,incompleteResults,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'GetRepoResponse(totalCount: $totalCount, incompleteResults: $incompleteResults, items: $items)';
}


}

/// @nodoc
abstract mixin class $GetRepoResponseCopyWith<$Res>  {
  factory $GetRepoResponseCopyWith(GetRepoResponse value, $Res Function(GetRepoResponse) _then) = _$GetRepoResponseCopyWithImpl;
@useResult
$Res call({
 int totalCount, bool incompleteResults, List<GithubReposModel> items
});




}
/// @nodoc
class _$GetRepoResponseCopyWithImpl<$Res>
    implements $GetRepoResponseCopyWith<$Res> {
  _$GetRepoResponseCopyWithImpl(this._self, this._then);

  final GetRepoResponse _self;
  final $Res Function(GetRepoResponse) _then;

/// Create a copy of GetRepoResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalCount = null,Object? incompleteResults = null,Object? items = null,}) {
  return _then(_self.copyWith(
totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,incompleteResults: null == incompleteResults ? _self.incompleteResults : incompleteResults // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<GithubReposModel>,
  ));
}

}


/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _GetRepoResponse implements GetRepoResponse {
  const _GetRepoResponse({required this.totalCount, required this.incompleteResults, required final  List<GithubReposModel> items}): _items = items;
  factory _GetRepoResponse.fromJson(Map<String, dynamic> json) => _$GetRepoResponseFromJson(json);

@override final  int totalCount;
@override final  bool incompleteResults;
 final  List<GithubReposModel> _items;
@override List<GithubReposModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of GetRepoResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetRepoResponseCopyWith<_GetRepoResponse> get copyWith => __$GetRepoResponseCopyWithImpl<_GetRepoResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetRepoResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetRepoResponse&&(identical(other.totalCount, totalCount) || other.totalCount == totalCount)&&(identical(other.incompleteResults, incompleteResults) || other.incompleteResults == incompleteResults)&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalCount,incompleteResults,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'GetRepoResponse(totalCount: $totalCount, incompleteResults: $incompleteResults, items: $items)';
}


}

/// @nodoc
abstract mixin class _$GetRepoResponseCopyWith<$Res> implements $GetRepoResponseCopyWith<$Res> {
  factory _$GetRepoResponseCopyWith(_GetRepoResponse value, $Res Function(_GetRepoResponse) _then) = __$GetRepoResponseCopyWithImpl;
@override @useResult
$Res call({
 int totalCount, bool incompleteResults, List<GithubReposModel> items
});




}
/// @nodoc
class __$GetRepoResponseCopyWithImpl<$Res>
    implements _$GetRepoResponseCopyWith<$Res> {
  __$GetRepoResponseCopyWithImpl(this._self, this._then);

  final _GetRepoResponse _self;
  final $Res Function(_GetRepoResponse) _then;

/// Create a copy of GetRepoResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalCount = null,Object? incompleteResults = null,Object? items = null,}) {
  return _then(_GetRepoResponse(
totalCount: null == totalCount ? _self.totalCount : totalCount // ignore: cast_nullable_to_non_nullable
as int,incompleteResults: null == incompleteResults ? _self.incompleteResults : incompleteResults // ignore: cast_nullable_to_non_nullable
as bool,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<GithubReposModel>,
  ));
}


}


/// @nodoc
mixin _$GithubReposModel {

 int get id; String get name; String get fullName; Owner get owner;
/// Create a copy of GithubReposModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GithubReposModelCopyWith<GithubReposModel> get copyWith => _$GithubReposModelCopyWithImpl<GithubReposModel>(this as GithubReposModel, _$identity);

  /// Serializes this GithubReposModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GithubReposModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.owner, owner) || other.owner == owner));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,fullName,owner);

@override
String toString() {
  return 'GithubReposModel(id: $id, name: $name, fullName: $fullName, owner: $owner)';
}


}

/// @nodoc
abstract mixin class $GithubReposModelCopyWith<$Res>  {
  factory $GithubReposModelCopyWith(GithubReposModel value, $Res Function(GithubReposModel) _then) = _$GithubReposModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, String fullName, Owner owner
});


$OwnerCopyWith<$Res> get owner;

}
/// @nodoc
class _$GithubReposModelCopyWithImpl<$Res>
    implements $GithubReposModelCopyWith<$Res> {
  _$GithubReposModelCopyWithImpl(this._self, this._then);

  final GithubReposModel _self;
  final $Res Function(GithubReposModel) _then;

/// Create a copy of GithubReposModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? fullName = null,Object? owner = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as Owner,
  ));
}
/// Create a copy of GithubReposModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OwnerCopyWith<$Res> get owner {
  
  return $OwnerCopyWith<$Res>(_self.owner, (value) {
    return _then(_self.copyWith(owner: value));
  });
}
}


/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _GithubReposModel implements GithubReposModel {
  const _GithubReposModel({required this.id, required this.name, required this.fullName, required this.owner});
  factory _GithubReposModel.fromJson(Map<String, dynamic> json) => _$GithubReposModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  String fullName;
@override final  Owner owner;

/// Create a copy of GithubReposModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GithubReposModelCopyWith<_GithubReposModel> get copyWith => __$GithubReposModelCopyWithImpl<_GithubReposModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GithubReposModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GithubReposModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.owner, owner) || other.owner == owner));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,fullName,owner);

@override
String toString() {
  return 'GithubReposModel(id: $id, name: $name, fullName: $fullName, owner: $owner)';
}


}

/// @nodoc
abstract mixin class _$GithubReposModelCopyWith<$Res> implements $GithubReposModelCopyWith<$Res> {
  factory _$GithubReposModelCopyWith(_GithubReposModel value, $Res Function(_GithubReposModel) _then) = __$GithubReposModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String fullName, Owner owner
});


@override $OwnerCopyWith<$Res> get owner;

}
/// @nodoc
class __$GithubReposModelCopyWithImpl<$Res>
    implements _$GithubReposModelCopyWith<$Res> {
  __$GithubReposModelCopyWithImpl(this._self, this._then);

  final _GithubReposModel _self;
  final $Res Function(_GithubReposModel) _then;

/// Create a copy of GithubReposModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? fullName = null,Object? owner = null,}) {
  return _then(_GithubReposModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,owner: null == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as Owner,
  ));
}

/// Create a copy of GithubReposModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OwnerCopyWith<$Res> get owner {
  
  return $OwnerCopyWith<$Res>(_self.owner, (value) {
    return _then(_self.copyWith(owner: value));
  });
}
}


/// @nodoc
mixin _$Owner {

 String get login; int get id; String get avatarUrl; String get htmlUrl;
/// Create a copy of Owner
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OwnerCopyWith<Owner> get copyWith => _$OwnerCopyWithImpl<Owner>(this as Owner, _$identity);

  /// Serializes this Owner to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Owner&&(identical(other.login, login) || other.login == login)&&(identical(other.id, id) || other.id == id)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,login,id,avatarUrl,htmlUrl);

@override
String toString() {
  return 'Owner(login: $login, id: $id, avatarUrl: $avatarUrl, htmlUrl: $htmlUrl)';
}


}

/// @nodoc
abstract mixin class $OwnerCopyWith<$Res>  {
  factory $OwnerCopyWith(Owner value, $Res Function(Owner) _then) = _$OwnerCopyWithImpl;
@useResult
$Res call({
 String login, int id, String avatarUrl, String htmlUrl
});




}
/// @nodoc
class _$OwnerCopyWithImpl<$Res>
    implements $OwnerCopyWith<$Res> {
  _$OwnerCopyWithImpl(this._self, this._then);

  final Owner _self;
  final $Res Function(Owner) _then;

/// Create a copy of Owner
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? login = null,Object? id = null,Object? avatarUrl = null,Object? htmlUrl = null,}) {
  return _then(_self.copyWith(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,htmlUrl: null == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _Owner implements Owner {
  const _Owner({required this.login, required this.id, required this.avatarUrl, required this.htmlUrl});
  factory _Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

@override final  String login;
@override final  int id;
@override final  String avatarUrl;
@override final  String htmlUrl;

/// Create a copy of Owner
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OwnerCopyWith<_Owner> get copyWith => __$OwnerCopyWithImpl<_Owner>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OwnerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Owner&&(identical(other.login, login) || other.login == login)&&(identical(other.id, id) || other.id == id)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.htmlUrl, htmlUrl) || other.htmlUrl == htmlUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,login,id,avatarUrl,htmlUrl);

@override
String toString() {
  return 'Owner(login: $login, id: $id, avatarUrl: $avatarUrl, htmlUrl: $htmlUrl)';
}


}

/// @nodoc
abstract mixin class _$OwnerCopyWith<$Res> implements $OwnerCopyWith<$Res> {
  factory _$OwnerCopyWith(_Owner value, $Res Function(_Owner) _then) = __$OwnerCopyWithImpl;
@override @useResult
$Res call({
 String login, int id, String avatarUrl, String htmlUrl
});




}
/// @nodoc
class __$OwnerCopyWithImpl<$Res>
    implements _$OwnerCopyWith<$Res> {
  __$OwnerCopyWithImpl(this._self, this._then);

  final _Owner _self;
  final $Res Function(_Owner) _then;

/// Create a copy of Owner
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? login = null,Object? id = null,Object? avatarUrl = null,Object? htmlUrl = null,}) {
  return _then(_Owner(
login: null == login ? _self.login : login // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,avatarUrl: null == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String,htmlUrl: null == htmlUrl ? _self.htmlUrl : htmlUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

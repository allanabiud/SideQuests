// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'side_quest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SideQuest {

@HiveField(0) String get id;@HiveField(1) String get title;@HiveField(2) String? get description;@HiveField(3) DateTime get deadline;@HiveField(4) String get inviteCode;@HiveField(5) String get creatorId;@HiveField(6) DateTime get createdAt;@HiveField(7) List<Participant> get participants;@HiveField(8) int? get iconCodePoint;
/// Create a copy of SideQuest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SideQuestCopyWith<SideQuest> get copyWith => _$SideQuestCopyWithImpl<SideQuest>(this as SideQuest, _$identity);

  /// Serializes this SideQuest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SideQuest&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.deadline, deadline) || other.deadline == deadline)&&(identical(other.inviteCode, inviteCode) || other.inviteCode == inviteCode)&&(identical(other.creatorId, creatorId) || other.creatorId == creatorId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other.participants, participants)&&(identical(other.iconCodePoint, iconCodePoint) || other.iconCodePoint == iconCodePoint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,deadline,inviteCode,creatorId,createdAt,const DeepCollectionEquality().hash(participants),iconCodePoint);

@override
String toString() {
  return 'SideQuest(id: $id, title: $title, description: $description, deadline: $deadline, inviteCode: $inviteCode, creatorId: $creatorId, createdAt: $createdAt, participants: $participants, iconCodePoint: $iconCodePoint)';
}


}

/// @nodoc
abstract mixin class $SideQuestCopyWith<$Res>  {
  factory $SideQuestCopyWith(SideQuest value, $Res Function(SideQuest) _then) = _$SideQuestCopyWithImpl;
@useResult
$Res call({
@HiveField(0) String id,@HiveField(1) String title,@HiveField(2) String? description,@HiveField(3) DateTime deadline,@HiveField(4) String inviteCode,@HiveField(5) String creatorId,@HiveField(6) DateTime createdAt,@HiveField(7) List<Participant> participants,@HiveField(8) int? iconCodePoint
});




}
/// @nodoc
class _$SideQuestCopyWithImpl<$Res>
    implements $SideQuestCopyWith<$Res> {
  _$SideQuestCopyWithImpl(this._self, this._then);

  final SideQuest _self;
  final $Res Function(SideQuest) _then;

/// Create a copy of SideQuest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = freezed,Object? deadline = null,Object? inviteCode = null,Object? creatorId = null,Object? createdAt = null,Object? participants = null,Object? iconCodePoint = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,deadline: null == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as DateTime,inviteCode: null == inviteCode ? _self.inviteCode : inviteCode // ignore: cast_nullable_to_non_nullable
as String,creatorId: null == creatorId ? _self.creatorId : creatorId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,participants: null == participants ? _self.participants : participants // ignore: cast_nullable_to_non_nullable
as List<Participant>,iconCodePoint: freezed == iconCodePoint ? _self.iconCodePoint : iconCodePoint // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [SideQuest].
extension SideQuestPatterns on SideQuest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SideQuest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SideQuest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SideQuest value)  $default,){
final _that = this;
switch (_that) {
case _SideQuest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SideQuest value)?  $default,){
final _that = this;
switch (_that) {
case _SideQuest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@HiveField(0)  String id, @HiveField(1)  String title, @HiveField(2)  String? description, @HiveField(3)  DateTime deadline, @HiveField(4)  String inviteCode, @HiveField(5)  String creatorId, @HiveField(6)  DateTime createdAt, @HiveField(7)  List<Participant> participants, @HiveField(8)  int? iconCodePoint)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SideQuest() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.deadline,_that.inviteCode,_that.creatorId,_that.createdAt,_that.participants,_that.iconCodePoint);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@HiveField(0)  String id, @HiveField(1)  String title, @HiveField(2)  String? description, @HiveField(3)  DateTime deadline, @HiveField(4)  String inviteCode, @HiveField(5)  String creatorId, @HiveField(6)  DateTime createdAt, @HiveField(7)  List<Participant> participants, @HiveField(8)  int? iconCodePoint)  $default,) {final _that = this;
switch (_that) {
case _SideQuest():
return $default(_that.id,_that.title,_that.description,_that.deadline,_that.inviteCode,_that.creatorId,_that.createdAt,_that.participants,_that.iconCodePoint);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@HiveField(0)  String id, @HiveField(1)  String title, @HiveField(2)  String? description, @HiveField(3)  DateTime deadline, @HiveField(4)  String inviteCode, @HiveField(5)  String creatorId, @HiveField(6)  DateTime createdAt, @HiveField(7)  List<Participant> participants, @HiveField(8)  int? iconCodePoint)?  $default,) {final _that = this;
switch (_that) {
case _SideQuest() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.deadline,_that.inviteCode,_that.creatorId,_that.createdAt,_that.participants,_that.iconCodePoint);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SideQuest implements SideQuest {
  const _SideQuest({@HiveField(0) required this.id, @HiveField(1) required this.title, @HiveField(2) this.description, @HiveField(3) required this.deadline, @HiveField(4) required this.inviteCode, @HiveField(5) required this.creatorId, @HiveField(6) required this.createdAt, @HiveField(7) final  List<Participant> participants = const [], @HiveField(8) this.iconCodePoint}): _participants = participants;
  factory _SideQuest.fromJson(Map<String, dynamic> json) => _$SideQuestFromJson(json);

@override@HiveField(0) final  String id;
@override@HiveField(1) final  String title;
@override@HiveField(2) final  String? description;
@override@HiveField(3) final  DateTime deadline;
@override@HiveField(4) final  String inviteCode;
@override@HiveField(5) final  String creatorId;
@override@HiveField(6) final  DateTime createdAt;
 final  List<Participant> _participants;
@override@JsonKey()@HiveField(7) List<Participant> get participants {
  if (_participants is EqualUnmodifiableListView) return _participants;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_participants);
}

@override@HiveField(8) final  int? iconCodePoint;

/// Create a copy of SideQuest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SideQuestCopyWith<_SideQuest> get copyWith => __$SideQuestCopyWithImpl<_SideQuest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SideQuestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SideQuest&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.deadline, deadline) || other.deadline == deadline)&&(identical(other.inviteCode, inviteCode) || other.inviteCode == inviteCode)&&(identical(other.creatorId, creatorId) || other.creatorId == creatorId)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&const DeepCollectionEquality().equals(other._participants, _participants)&&(identical(other.iconCodePoint, iconCodePoint) || other.iconCodePoint == iconCodePoint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,description,deadline,inviteCode,creatorId,createdAt,const DeepCollectionEquality().hash(_participants),iconCodePoint);

@override
String toString() {
  return 'SideQuest(id: $id, title: $title, description: $description, deadline: $deadline, inviteCode: $inviteCode, creatorId: $creatorId, createdAt: $createdAt, participants: $participants, iconCodePoint: $iconCodePoint)';
}


}

/// @nodoc
abstract mixin class _$SideQuestCopyWith<$Res> implements $SideQuestCopyWith<$Res> {
  factory _$SideQuestCopyWith(_SideQuest value, $Res Function(_SideQuest) _then) = __$SideQuestCopyWithImpl;
@override @useResult
$Res call({
@HiveField(0) String id,@HiveField(1) String title,@HiveField(2) String? description,@HiveField(3) DateTime deadline,@HiveField(4) String inviteCode,@HiveField(5) String creatorId,@HiveField(6) DateTime createdAt,@HiveField(7) List<Participant> participants,@HiveField(8) int? iconCodePoint
});




}
/// @nodoc
class __$SideQuestCopyWithImpl<$Res>
    implements _$SideQuestCopyWith<$Res> {
  __$SideQuestCopyWithImpl(this._self, this._then);

  final _SideQuest _self;
  final $Res Function(_SideQuest) _then;

/// Create a copy of SideQuest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = freezed,Object? deadline = null,Object? inviteCode = null,Object? creatorId = null,Object? createdAt = null,Object? participants = null,Object? iconCodePoint = freezed,}) {
  return _then(_SideQuest(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,deadline: null == deadline ? _self.deadline : deadline // ignore: cast_nullable_to_non_nullable
as DateTime,inviteCode: null == inviteCode ? _self.inviteCode : inviteCode // ignore: cast_nullable_to_non_nullable
as String,creatorId: null == creatorId ? _self.creatorId : creatorId // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,participants: null == participants ? _self._participants : participants // ignore: cast_nullable_to_non_nullable
as List<Participant>,iconCodePoint: freezed == iconCodePoint ? _self.iconCodePoint : iconCodePoint // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on

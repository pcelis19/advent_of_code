// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day_3_part_b_set_node.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Day3PartBSetNode {

 (IntPoint, IntPoint) get gearNumberLocations; (IntPoint, IntPoint) get gearNumberLocationsReveresed;
/// Create a copy of Day3PartBSetNode
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Day3PartBSetNodeCopyWith<Day3PartBSetNode> get copyWith => _$Day3PartBSetNodeCopyWithImpl<Day3PartBSetNode>(this as Day3PartBSetNode, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Day3PartBSetNode&&(identical(other.gearNumberLocations, gearNumberLocations) || other.gearNumberLocations == gearNumberLocations)&&(identical(other.gearNumberLocationsReveresed, gearNumberLocationsReveresed) || other.gearNumberLocationsReveresed == gearNumberLocationsReveresed));
}


@override
int get hashCode => Object.hash(runtimeType,gearNumberLocations,gearNumberLocationsReveresed);

@override
String toString() {
  return 'Day3PartBSetNode(gearNumberLocations: $gearNumberLocations, gearNumberLocationsReveresed: $gearNumberLocationsReveresed)';
}


}

/// @nodoc
abstract mixin class $Day3PartBSetNodeCopyWith<$Res>  {
  factory $Day3PartBSetNodeCopyWith(Day3PartBSetNode value, $Res Function(Day3PartBSetNode) _then) = _$Day3PartBSetNodeCopyWithImpl;
@useResult
$Res call({
 (IntPoint, IntPoint) gearNumberLocations, (IntPoint, IntPoint) gearNumberLocationsReveresed
});




}
/// @nodoc
class _$Day3PartBSetNodeCopyWithImpl<$Res>
    implements $Day3PartBSetNodeCopyWith<$Res> {
  _$Day3PartBSetNodeCopyWithImpl(this._self, this._then);

  final Day3PartBSetNode _self;
  final $Res Function(Day3PartBSetNode) _then;

/// Create a copy of Day3PartBSetNode
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gearNumberLocations = null,Object? gearNumberLocationsReveresed = null,}) {
  return _then(_self.copyWith(
gearNumberLocations: null == gearNumberLocations ? _self.gearNumberLocations : gearNumberLocations // ignore: cast_nullable_to_non_nullable
as (IntPoint, IntPoint),gearNumberLocationsReveresed: null == gearNumberLocationsReveresed ? _self.gearNumberLocationsReveresed : gearNumberLocationsReveresed // ignore: cast_nullable_to_non_nullable
as (IntPoint, IntPoint),
  ));
}

}


/// Adds pattern-matching-related methods to [Day3PartBSetNode].
extension Day3PartBSetNodePatterns on Day3PartBSetNode {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Day3PartBSetNode value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Day3PartBSetNode() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Day3PartBSetNode value)  $default,){
final _that = this;
switch (_that) {
case _Day3PartBSetNode():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Day3PartBSetNode value)?  $default,){
final _that = this;
switch (_that) {
case _Day3PartBSetNode() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( (IntPoint, IntPoint) gearNumberLocations,  (IntPoint, IntPoint) gearNumberLocationsReveresed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Day3PartBSetNode() when $default != null:
return $default(_that.gearNumberLocations,_that.gearNumberLocationsReveresed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( (IntPoint, IntPoint) gearNumberLocations,  (IntPoint, IntPoint) gearNumberLocationsReveresed)  $default,) {final _that = this;
switch (_that) {
case _Day3PartBSetNode():
return $default(_that.gearNumberLocations,_that.gearNumberLocationsReveresed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( (IntPoint, IntPoint) gearNumberLocations,  (IntPoint, IntPoint) gearNumberLocationsReveresed)?  $default,) {final _that = this;
switch (_that) {
case _Day3PartBSetNode() when $default != null:
return $default(_that.gearNumberLocations,_that.gearNumberLocationsReveresed);case _:
  return null;

}
}

}

/// @nodoc


class _Day3PartBSetNode extends Day3PartBSetNode {
  const _Day3PartBSetNode({required this.gearNumberLocations, required this.gearNumberLocationsReveresed}): super._();
  

@override final  (IntPoint, IntPoint) gearNumberLocations;
@override final  (IntPoint, IntPoint) gearNumberLocationsReveresed;

/// Create a copy of Day3PartBSetNode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Day3PartBSetNodeCopyWith<_Day3PartBSetNode> get copyWith => __$Day3PartBSetNodeCopyWithImpl<_Day3PartBSetNode>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Day3PartBSetNode&&(identical(other.gearNumberLocations, gearNumberLocations) || other.gearNumberLocations == gearNumberLocations)&&(identical(other.gearNumberLocationsReveresed, gearNumberLocationsReveresed) || other.gearNumberLocationsReveresed == gearNumberLocationsReveresed));
}


@override
int get hashCode => Object.hash(runtimeType,gearNumberLocations,gearNumberLocationsReveresed);

@override
String toString() {
  return 'Day3PartBSetNode(gearNumberLocations: $gearNumberLocations, gearNumberLocationsReveresed: $gearNumberLocationsReveresed)';
}


}

/// @nodoc
abstract mixin class _$Day3PartBSetNodeCopyWith<$Res> implements $Day3PartBSetNodeCopyWith<$Res> {
  factory _$Day3PartBSetNodeCopyWith(_Day3PartBSetNode value, $Res Function(_Day3PartBSetNode) _then) = __$Day3PartBSetNodeCopyWithImpl;
@override @useResult
$Res call({
 (IntPoint, IntPoint) gearNumberLocations, (IntPoint, IntPoint) gearNumberLocationsReveresed
});




}
/// @nodoc
class __$Day3PartBSetNodeCopyWithImpl<$Res>
    implements _$Day3PartBSetNodeCopyWith<$Res> {
  __$Day3PartBSetNodeCopyWithImpl(this._self, this._then);

  final _Day3PartBSetNode _self;
  final $Res Function(_Day3PartBSetNode) _then;

/// Create a copy of Day3PartBSetNode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gearNumberLocations = null,Object? gearNumberLocationsReveresed = null,}) {
  return _then(_Day3PartBSetNode(
gearNumberLocations: null == gearNumberLocations ? _self.gearNumberLocations : gearNumberLocations // ignore: cast_nullable_to_non_nullable
as (IntPoint, IntPoint),gearNumberLocationsReveresed: null == gearNumberLocationsReveresed ? _self.gearNumberLocationsReveresed : gearNumberLocationsReveresed // ignore: cast_nullable_to_non_nullable
as (IntPoint, IntPoint),
  ));
}


}

// dart format on

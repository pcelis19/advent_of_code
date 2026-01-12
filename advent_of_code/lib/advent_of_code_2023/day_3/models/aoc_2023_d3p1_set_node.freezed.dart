// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aoc_2023_d3p1_set_node.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AOC2023D3P1SetNode {

 (IntPoint, IntPoint) get gearNumberLocations; (IntPoint, IntPoint) get gearNumberLocationsReveresed;
/// Create a copy of AOC2023D3P1SetNode
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AOC2023D3P1SetNodeCopyWith<AOC2023D3P1SetNode> get copyWith => _$AOC2023D3P1SetNodeCopyWithImpl<AOC2023D3P1SetNode>(this as AOC2023D3P1SetNode, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AOC2023D3P1SetNode&&(identical(other.gearNumberLocations, gearNumberLocations) || other.gearNumberLocations == gearNumberLocations)&&(identical(other.gearNumberLocationsReveresed, gearNumberLocationsReveresed) || other.gearNumberLocationsReveresed == gearNumberLocationsReveresed));
}


@override
int get hashCode => Object.hash(runtimeType,gearNumberLocations,gearNumberLocationsReveresed);

@override
String toString() {
  return 'AOC2023D3P1SetNode(gearNumberLocations: $gearNumberLocations, gearNumberLocationsReveresed: $gearNumberLocationsReveresed)';
}


}

/// @nodoc
abstract mixin class $AOC2023D3P1SetNodeCopyWith<$Res>  {
  factory $AOC2023D3P1SetNodeCopyWith(AOC2023D3P1SetNode value, $Res Function(AOC2023D3P1SetNode) _then) = _$AOC2023D3P1SetNodeCopyWithImpl;
@useResult
$Res call({
 (IntPoint, IntPoint) gearNumberLocations, (IntPoint, IntPoint) gearNumberLocationsReveresed
});




}
/// @nodoc
class _$AOC2023D3P1SetNodeCopyWithImpl<$Res>
    implements $AOC2023D3P1SetNodeCopyWith<$Res> {
  _$AOC2023D3P1SetNodeCopyWithImpl(this._self, this._then);

  final AOC2023D3P1SetNode _self;
  final $Res Function(AOC2023D3P1SetNode) _then;

/// Create a copy of AOC2023D3P1SetNode
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? gearNumberLocations = null,Object? gearNumberLocationsReveresed = null,}) {
  return _then(_self.copyWith(
gearNumberLocations: null == gearNumberLocations ? _self.gearNumberLocations : gearNumberLocations // ignore: cast_nullable_to_non_nullable
as (IntPoint, IntPoint),gearNumberLocationsReveresed: null == gearNumberLocationsReveresed ? _self.gearNumberLocationsReveresed : gearNumberLocationsReveresed // ignore: cast_nullable_to_non_nullable
as (IntPoint, IntPoint),
  ));
}

}


/// Adds pattern-matching-related methods to [AOC2023D3P1SetNode].
extension AOC2023D3P1SetNodePatterns on AOC2023D3P1SetNode {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AOC2023D3P1SetNode value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AOC2023D3P1SetNode() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AOC2023D3P1SetNode value)  $default,){
final _that = this;
switch (_that) {
case _AOC2023D3P1SetNode():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AOC2023D3P1SetNode value)?  $default,){
final _that = this;
switch (_that) {
case _AOC2023D3P1SetNode() when $default != null:
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
case _AOC2023D3P1SetNode() when $default != null:
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
case _AOC2023D3P1SetNode():
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
case _AOC2023D3P1SetNode() when $default != null:
return $default(_that.gearNumberLocations,_that.gearNumberLocationsReveresed);case _:
  return null;

}
}

}

/// @nodoc


class _AOC2023D3P1SetNode extends AOC2023D3P1SetNode {
   _AOC2023D3P1SetNode({required this.gearNumberLocations, required this.gearNumberLocationsReveresed}): super._();
  

@override final  (IntPoint, IntPoint) gearNumberLocations;
@override final  (IntPoint, IntPoint) gearNumberLocationsReveresed;

/// Create a copy of AOC2023D3P1SetNode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AOC2023D3P1SetNodeCopyWith<_AOC2023D3P1SetNode> get copyWith => __$AOC2023D3P1SetNodeCopyWithImpl<_AOC2023D3P1SetNode>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AOC2023D3P1SetNode&&(identical(other.gearNumberLocations, gearNumberLocations) || other.gearNumberLocations == gearNumberLocations)&&(identical(other.gearNumberLocationsReveresed, gearNumberLocationsReveresed) || other.gearNumberLocationsReveresed == gearNumberLocationsReveresed));
}


@override
int get hashCode => Object.hash(runtimeType,gearNumberLocations,gearNumberLocationsReveresed);

@override
String toString() {
  return 'AOC2023D3P1SetNode(gearNumberLocations: $gearNumberLocations, gearNumberLocationsReveresed: $gearNumberLocationsReveresed)';
}


}

/// @nodoc
abstract mixin class _$AOC2023D3P1SetNodeCopyWith<$Res> implements $AOC2023D3P1SetNodeCopyWith<$Res> {
  factory _$AOC2023D3P1SetNodeCopyWith(_AOC2023D3P1SetNode value, $Res Function(_AOC2023D3P1SetNode) _then) = __$AOC2023D3P1SetNodeCopyWithImpl;
@override @useResult
$Res call({
 (IntPoint, IntPoint) gearNumberLocations, (IntPoint, IntPoint) gearNumberLocationsReveresed
});




}
/// @nodoc
class __$AOC2023D3P1SetNodeCopyWithImpl<$Res>
    implements _$AOC2023D3P1SetNodeCopyWith<$Res> {
  __$AOC2023D3P1SetNodeCopyWithImpl(this._self, this._then);

  final _AOC2023D3P1SetNode _self;
  final $Res Function(_AOC2023D3P1SetNode) _then;

/// Create a copy of AOC2023D3P1SetNode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? gearNumberLocations = null,Object? gearNumberLocationsReveresed = null,}) {
  return _then(_AOC2023D3P1SetNode(
gearNumberLocations: null == gearNumberLocations ? _self.gearNumberLocations : gearNumberLocations // ignore: cast_nullable_to_non_nullable
as (IntPoint, IntPoint),gearNumberLocationsReveresed: null == gearNumberLocationsReveresed ? _self.gearNumberLocationsReveresed : gearNumberLocationsReveresed // ignore: cast_nullable_to_non_nullable
as (IntPoint, IntPoint),
  ));
}


}

// dart format on

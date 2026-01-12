// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aoc_2023_d3p1_input_node.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AOC2023D3P1InputNode {

 String get value;
/// Create a copy of AOC2023D3P1InputNode
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AOC2023D3P1InputNodeCopyWith<AOC2023D3P1InputNode> get copyWith => _$AOC2023D3P1InputNodeCopyWithImpl<AOC2023D3P1InputNode>(this as AOC2023D3P1InputNode, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AOC2023D3P1InputNode&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'AOC2023D3P1InputNode(value: $value)';
}


}

/// @nodoc
abstract mixin class $AOC2023D3P1InputNodeCopyWith<$Res>  {
  factory $AOC2023D3P1InputNodeCopyWith(AOC2023D3P1InputNode value, $Res Function(AOC2023D3P1InputNode) _then) = _$AOC2023D3P1InputNodeCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$AOC2023D3P1InputNodeCopyWithImpl<$Res>
    implements $AOC2023D3P1InputNodeCopyWith<$Res> {
  _$AOC2023D3P1InputNodeCopyWithImpl(this._self, this._then);

  final AOC2023D3P1InputNode _self;
  final $Res Function(AOC2023D3P1InputNode) _then;

/// Create a copy of AOC2023D3P1InputNode
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = null,}) {
  return _then(_self.copyWith(
value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AOC2023D3P1InputNode].
extension AOC2023D3P1InputNodePatterns on AOC2023D3P1InputNode {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AOC2023D3P1InputNodeNumber value)?  number,TResult Function( AOC2023D3P1InputNodeSymbol value)?  symbol,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AOC2023D3P1InputNodeNumber() when number != null:
return number(_that);case AOC2023D3P1InputNodeSymbol() when symbol != null:
return symbol(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AOC2023D3P1InputNodeNumber value)  number,required TResult Function( AOC2023D3P1InputNodeSymbol value)  symbol,}){
final _that = this;
switch (_that) {
case AOC2023D3P1InputNodeNumber():
return number(_that);case AOC2023D3P1InputNodeSymbol():
return symbol(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AOC2023D3P1InputNodeNumber value)?  number,TResult? Function( AOC2023D3P1InputNodeSymbol value)?  symbol,}){
final _that = this;
switch (_that) {
case AOC2023D3P1InputNodeNumber() when number != null:
return number(_that);case AOC2023D3P1InputNodeSymbol() when symbol != null:
return symbol(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String value,  int intValue)?  number,TResult Function( String value)?  symbol,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AOC2023D3P1InputNodeNumber() when number != null:
return number(_that.value,_that.intValue);case AOC2023D3P1InputNodeSymbol() when symbol != null:
return symbol(_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String value,  int intValue)  number,required TResult Function( String value)  symbol,}) {final _that = this;
switch (_that) {
case AOC2023D3P1InputNodeNumber():
return number(_that.value,_that.intValue);case AOC2023D3P1InputNodeSymbol():
return symbol(_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String value,  int intValue)?  number,TResult? Function( String value)?  symbol,}) {final _that = this;
switch (_that) {
case AOC2023D3P1InputNodeNumber() when number != null:
return number(_that.value,_that.intValue);case AOC2023D3P1InputNodeSymbol() when symbol != null:
return symbol(_that.value);case _:
  return null;

}
}

}

/// @nodoc


class AOC2023D3P1InputNodeNumber extends AOC2023D3P1InputNode {
   AOC2023D3P1InputNodeNumber(this.value, this.intValue): super._();
  

@override final  String value;
 final  int intValue;

/// Create a copy of AOC2023D3P1InputNode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AOC2023D3P1InputNodeNumberCopyWith<AOC2023D3P1InputNodeNumber> get copyWith => _$AOC2023D3P1InputNodeNumberCopyWithImpl<AOC2023D3P1InputNodeNumber>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AOC2023D3P1InputNodeNumber&&(identical(other.value, value) || other.value == value)&&(identical(other.intValue, intValue) || other.intValue == intValue));
}


@override
int get hashCode => Object.hash(runtimeType,value,intValue);

@override
String toString() {
  return 'AOC2023D3P1InputNode.number(value: $value, intValue: $intValue)';
}


}

/// @nodoc
abstract mixin class $AOC2023D3P1InputNodeNumberCopyWith<$Res> implements $AOC2023D3P1InputNodeCopyWith<$Res> {
  factory $AOC2023D3P1InputNodeNumberCopyWith(AOC2023D3P1InputNodeNumber value, $Res Function(AOC2023D3P1InputNodeNumber) _then) = _$AOC2023D3P1InputNodeNumberCopyWithImpl;
@override @useResult
$Res call({
 String value, int intValue
});




}
/// @nodoc
class _$AOC2023D3P1InputNodeNumberCopyWithImpl<$Res>
    implements $AOC2023D3P1InputNodeNumberCopyWith<$Res> {
  _$AOC2023D3P1InputNodeNumberCopyWithImpl(this._self, this._then);

  final AOC2023D3P1InputNodeNumber _self;
  final $Res Function(AOC2023D3P1InputNodeNumber) _then;

/// Create a copy of AOC2023D3P1InputNode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,Object? intValue = null,}) {
  return _then(AOC2023D3P1InputNodeNumber(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,null == intValue ? _self.intValue : intValue // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class AOC2023D3P1InputNodeSymbol extends AOC2023D3P1InputNode {
   AOC2023D3P1InputNodeSymbol(this.value): super._();
  

@override final  String value;

/// Create a copy of AOC2023D3P1InputNode
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AOC2023D3P1InputNodeSymbolCopyWith<AOC2023D3P1InputNodeSymbol> get copyWith => _$AOC2023D3P1InputNodeSymbolCopyWithImpl<AOC2023D3P1InputNodeSymbol>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AOC2023D3P1InputNodeSymbol&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'AOC2023D3P1InputNode.symbol(value: $value)';
}


}

/// @nodoc
abstract mixin class $AOC2023D3P1InputNodeSymbolCopyWith<$Res> implements $AOC2023D3P1InputNodeCopyWith<$Res> {
  factory $AOC2023D3P1InputNodeSymbolCopyWith(AOC2023D3P1InputNodeSymbol value, $Res Function(AOC2023D3P1InputNodeSymbol) _then) = _$AOC2023D3P1InputNodeSymbolCopyWithImpl;
@override @useResult
$Res call({
 String value
});




}
/// @nodoc
class _$AOC2023D3P1InputNodeSymbolCopyWithImpl<$Res>
    implements $AOC2023D3P1InputNodeSymbolCopyWith<$Res> {
  _$AOC2023D3P1InputNodeSymbolCopyWithImpl(this._self, this._then);

  final AOC2023D3P1InputNodeSymbol _self;
  final $Res Function(AOC2023D3P1InputNodeSymbol) _then;

/// Create a copy of AOC2023D3P1InputNode
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(AOC2023D3P1InputNodeSymbol(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on

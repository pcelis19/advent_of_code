// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day_3_part_b_set_node.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Day3PartBSetNode {
  (Point<num>, Point<num>) get forward => throw _privateConstructorUsedError;
  (Point<num>, Point<num>) get backwards => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $Day3PartBSetNodeCopyWith<Day3PartBSetNode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Day3PartBSetNodeCopyWith<$Res> {
  factory $Day3PartBSetNodeCopyWith(
          Day3PartBSetNode value, $Res Function(Day3PartBSetNode) then) =
      _$Day3PartBSetNodeCopyWithImpl<$Res, Day3PartBSetNode>;
  @useResult
  $Res call(
      {(Point<num>, Point<num>) forward, (Point<num>, Point<num>) backwards});
}

/// @nodoc
class _$Day3PartBSetNodeCopyWithImpl<$Res, $Val extends Day3PartBSetNode>
    implements $Day3PartBSetNodeCopyWith<$Res> {
  _$Day3PartBSetNodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forward = null,
    Object? backwards = null,
  }) {
    return _then(_value.copyWith(
      forward: null == forward
          ? _value.forward
          : forward // ignore: cast_nullable_to_non_nullable
              as (Point<num>, Point<num>),
      backwards: null == backwards
          ? _value.backwards
          : backwards // ignore: cast_nullable_to_non_nullable
              as (Point<num>, Point<num>),
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Day3PartBSetNodeImplCopyWith<$Res>
    implements $Day3PartBSetNodeCopyWith<$Res> {
  factory _$$Day3PartBSetNodeImplCopyWith(_$Day3PartBSetNodeImpl value,
          $Res Function(_$Day3PartBSetNodeImpl) then) =
      __$$Day3PartBSetNodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {(Point<num>, Point<num>) forward, (Point<num>, Point<num>) backwards});
}

/// @nodoc
class __$$Day3PartBSetNodeImplCopyWithImpl<$Res>
    extends _$Day3PartBSetNodeCopyWithImpl<$Res, _$Day3PartBSetNodeImpl>
    implements _$$Day3PartBSetNodeImplCopyWith<$Res> {
  __$$Day3PartBSetNodeImplCopyWithImpl(_$Day3PartBSetNodeImpl _value,
      $Res Function(_$Day3PartBSetNodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? forward = null,
    Object? backwards = null,
  }) {
    return _then(_$Day3PartBSetNodeImpl(
      forward: null == forward
          ? _value.forward
          : forward // ignore: cast_nullable_to_non_nullable
              as (Point<num>, Point<num>),
      backwards: null == backwards
          ? _value.backwards
          : backwards // ignore: cast_nullable_to_non_nullable
              as (Point<num>, Point<num>),
    ));
  }
}

/// @nodoc

class _$Day3PartBSetNodeImpl implements _Day3PartBSetNode {
  const _$Day3PartBSetNodeImpl(
      {required this.forward, required this.backwards});

  @override
  final (Point<num>, Point<num>) forward;
  @override
  final (Point<num>, Point<num>) backwards;

  @override
  String toString() {
    return 'Day3PartBSetNode(forward: $forward, backwards: $backwards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Day3PartBSetNodeImpl &&
            (identical(other.forward, forward) || other.forward == forward) &&
            (identical(other.backwards, backwards) ||
                other.backwards == backwards));
  }

  @override
  int get hashCode => Object.hash(runtimeType, forward, backwards);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Day3PartBSetNodeImplCopyWith<_$Day3PartBSetNodeImpl> get copyWith =>
      __$$Day3PartBSetNodeImplCopyWithImpl<_$Day3PartBSetNodeImpl>(
          this, _$identity);
}

abstract class _Day3PartBSetNode implements Day3PartBSetNode {
  const factory _Day3PartBSetNode(
          {required final (Point<num>, Point<num>) forward,
          required final (Point<num>, Point<num>) backwards}) =
      _$Day3PartBSetNodeImpl;

  @override
  (Point<num>, Point<num>) get forward;
  @override
  (Point<num>, Point<num>) get backwards;
  @override
  @JsonKey(ignore: true)
  _$$Day3PartBSetNodeImplCopyWith<_$Day3PartBSetNodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

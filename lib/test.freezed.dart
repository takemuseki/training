// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'test.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TestStateTearOff {
  const _$TestStateTearOff();

// ignore: unused_element
  _TestState call(
      {Map<String, dynamic> map = const <String, dynamic>{
        "tes1": true,
        "test2": false
      }}) {
    return _TestState(
      map: map,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TestState = _$TestStateTearOff();

/// @nodoc
mixin _$TestState {
  Map<String, dynamic> get map;

  $TestStateCopyWith<TestState> get copyWith;
}

/// @nodoc
abstract class $TestStateCopyWith<$Res> {
  factory $TestStateCopyWith(TestState value, $Res Function(TestState) then) =
      _$TestStateCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic> map});
}

/// @nodoc
class _$TestStateCopyWithImpl<$Res> implements $TestStateCopyWith<$Res> {
  _$TestStateCopyWithImpl(this._value, this._then);

  final TestState _value;
  // ignore: unused_field
  final $Res Function(TestState) _then;

  @override
  $Res call({
    Object map = freezed,
  }) {
    return _then(_value.copyWith(
      map: map == freezed ? _value.map : map as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$TestStateCopyWith<$Res> implements $TestStateCopyWith<$Res> {
  factory _$TestStateCopyWith(
          _TestState value, $Res Function(_TestState) then) =
      __$TestStateCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, dynamic> map});
}

/// @nodoc
class __$TestStateCopyWithImpl<$Res> extends _$TestStateCopyWithImpl<$Res>
    implements _$TestStateCopyWith<$Res> {
  __$TestStateCopyWithImpl(_TestState _value, $Res Function(_TestState) _then)
      : super(_value, (v) => _then(v as _TestState));

  @override
  _TestState get _value => super._value as _TestState;

  @override
  $Res call({
    Object map = freezed,
  }) {
    return _then(_TestState(
      map: map == freezed ? _value.map : map as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
class _$_TestState with DiagnosticableTreeMixin implements _TestState {
  _$_TestState(
      {this.map = const <String, dynamic>{"tes1": true, "test2": false}})
      : assert(map != null);

  @JsonKey(defaultValue: const <String, dynamic>{"tes1": true, "test2": false})
  @override
  final Map<String, dynamic> map;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TestState(map: $map)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TestState'))
      ..add(DiagnosticsProperty('map', map));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TestState &&
            (identical(other.map, map) ||
                const DeepCollectionEquality().equals(other.map, map)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(map);

  @override
  _$TestStateCopyWith<_TestState> get copyWith =>
      __$TestStateCopyWithImpl<_TestState>(this, _$identity);
}

abstract class _TestState implements TestState {
  factory _TestState({Map<String, dynamic> map}) = _$_TestState;

  @override
  Map<String, dynamic> get map;
  @override
  _$TestStateCopyWith<_TestState> get copyWith;
}

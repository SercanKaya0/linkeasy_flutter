// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'shortly_clients.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ShortlyClientsTearOff {
  const _$ShortlyClientsTearOff();

  _Posts posts({Map<String, dynamic>? queryParameters}) {
    return _Posts(
      queryParameters: queryParameters,
    );
  }
}

/// @nodoc
const $ShortlyClients = _$ShortlyClientsTearOff();

/// @nodoc
mixin _$ShortlyClients {
  Map<String, dynamic>? get queryParameters =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic>? queryParameters) posts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic>? queryParameters)? posts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Posts value) posts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Posts value)? posts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShortlyClientsCopyWith<ShortlyClients> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortlyClientsCopyWith<$Res> {
  factory $ShortlyClientsCopyWith(
          ShortlyClients value, $Res Function(ShortlyClients) then) =
      _$ShortlyClientsCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic>? queryParameters});
}

/// @nodoc
class _$ShortlyClientsCopyWithImpl<$Res>
    implements $ShortlyClientsCopyWith<$Res> {
  _$ShortlyClientsCopyWithImpl(this._value, this._then);

  final ShortlyClients _value;
  // ignore: unused_field
  final $Res Function(ShortlyClients) _then;

  @override
  $Res call({
    Object? queryParameters = freezed,
  }) {
    return _then(_value.copyWith(
      queryParameters: queryParameters == freezed
          ? _value.queryParameters
          : queryParameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
abstract class _$PostsCopyWith<$Res> implements $ShortlyClientsCopyWith<$Res> {
  factory _$PostsCopyWith(_Posts value, $Res Function(_Posts) then) =
      __$PostsCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, dynamic>? queryParameters});
}

/// @nodoc
class __$PostsCopyWithImpl<$Res> extends _$ShortlyClientsCopyWithImpl<$Res>
    implements _$PostsCopyWith<$Res> {
  __$PostsCopyWithImpl(_Posts _value, $Res Function(_Posts) _then)
      : super(_value, (v) => _then(v as _Posts));

  @override
  _Posts get _value => super._value as _Posts;

  @override
  $Res call({
    Object? queryParameters = freezed,
  }) {
    return _then(_Posts(
      queryParameters: queryParameters == freezed
          ? _value.queryParameters
          : queryParameters // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class _$_Posts extends _Posts {
  const _$_Posts({this.queryParameters}) : super._();

  @override
  final Map<String, dynamic>? queryParameters;

  @override
  String toString() {
    return 'ShortlyClients.posts(queryParameters: $queryParameters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Posts &&
            (identical(other.queryParameters, queryParameters) ||
                const DeepCollectionEquality()
                    .equals(other.queryParameters, queryParameters)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(queryParameters);

  @JsonKey(ignore: true)
  @override
  _$PostsCopyWith<_Posts> get copyWith =>
      __$PostsCopyWithImpl<_Posts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic>? queryParameters) posts,
  }) {
    return posts(queryParameters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic>? queryParameters)? posts,
    required TResult orElse(),
  }) {
    if (posts != null) {
      return posts(queryParameters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Posts value) posts,
  }) {
    return posts(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Posts value)? posts,
    required TResult orElse(),
  }) {
    if (posts != null) {
      return posts(this);
    }
    return orElse();
  }
}

abstract class _Posts extends ShortlyClients {
  const factory _Posts({Map<String, dynamic>? queryParameters}) = _$_Posts;
  const _Posts._() : super._();

  @override
  Map<String, dynamic>? get queryParameters =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PostsCopyWith<_Posts> get copyWith => throw _privateConstructorUsedError;
}

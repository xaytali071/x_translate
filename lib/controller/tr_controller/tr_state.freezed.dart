// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tr_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TrState {
  String get translateText => throw _privateConstructorUsedError;
  List<MessageModel> get listOfMessage => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;
  bool get isEmpt => throw _privateConstructorUsedError;
  bool get isDark => throw _privateConstructorUsedError;
  TrModel? get from => throw _privateConstructorUsedError;
  TrModel? get to => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TrStateCopyWith<TrState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrStateCopyWith<$Res> {
  factory $TrStateCopyWith(TrState value, $Res Function(TrState) then) =
      _$TrStateCopyWithImpl<$Res, TrState>;
  @useResult
  $Res call(
      {String translateText,
      List<MessageModel> listOfMessage,
      bool isLoading,
      String? imagePath,
      bool isEmpt,
      bool isDark,
      TrModel? from,
      TrModel? to});
}

/// @nodoc
class _$TrStateCopyWithImpl<$Res, $Val extends TrState>
    implements $TrStateCopyWith<$Res> {
  _$TrStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translateText = null,
    Object? listOfMessage = null,
    Object? isLoading = null,
    Object? imagePath = freezed,
    Object? isEmpt = null,
    Object? isDark = null,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_value.copyWith(
      translateText: null == translateText
          ? _value.translateText
          : translateText // ignore: cast_nullable_to_non_nullable
              as String,
      listOfMessage: null == listOfMessage
          ? _value.listOfMessage
          : listOfMessage // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      isEmpt: null == isEmpt
          ? _value.isEmpt
          : isEmpt // ignore: cast_nullable_to_non_nullable
              as bool,
      isDark: null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as TrModel?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as TrModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrStateImplCopyWith<$Res> implements $TrStateCopyWith<$Res> {
  factory _$$TrStateImplCopyWith(
          _$TrStateImpl value, $Res Function(_$TrStateImpl) then) =
      __$$TrStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String translateText,
      List<MessageModel> listOfMessage,
      bool isLoading,
      String? imagePath,
      bool isEmpt,
      bool isDark,
      TrModel? from,
      TrModel? to});
}

/// @nodoc
class __$$TrStateImplCopyWithImpl<$Res>
    extends _$TrStateCopyWithImpl<$Res, _$TrStateImpl>
    implements _$$TrStateImplCopyWith<$Res> {
  __$$TrStateImplCopyWithImpl(
      _$TrStateImpl _value, $Res Function(_$TrStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? translateText = null,
    Object? listOfMessage = null,
    Object? isLoading = null,
    Object? imagePath = freezed,
    Object? isEmpt = null,
    Object? isDark = null,
    Object? from = freezed,
    Object? to = freezed,
  }) {
    return _then(_$TrStateImpl(
      translateText: null == translateText
          ? _value.translateText
          : translateText // ignore: cast_nullable_to_non_nullable
              as String,
      listOfMessage: null == listOfMessage
          ? _value._listOfMessage
          : listOfMessage // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      isEmpt: null == isEmpt
          ? _value.isEmpt
          : isEmpt // ignore: cast_nullable_to_non_nullable
              as bool,
      isDark: null == isDark
          ? _value.isDark
          : isDark // ignore: cast_nullable_to_non_nullable
              as bool,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as TrModel?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as TrModel?,
    ));
  }
}

/// @nodoc

class _$TrStateImpl implements _TrState {
  const _$TrStateImpl(
      {this.translateText = "",
      final List<MessageModel> listOfMessage = const [],
      this.isLoading = false,
      this.imagePath,
      this.isEmpt = false,
      this.isDark = false,
      this.from,
      this.to})
      : _listOfMessage = listOfMessage;

  @override
  @JsonKey()
  final String translateText;
  final List<MessageModel> _listOfMessage;
  @override
  @JsonKey()
  List<MessageModel> get listOfMessage {
    if (_listOfMessage is EqualUnmodifiableListView) return _listOfMessage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listOfMessage);
  }

  @override
  @JsonKey()
  final bool isLoading;
  @override
  final String? imagePath;
  @override
  @JsonKey()
  final bool isEmpt;
  @override
  @JsonKey()
  final bool isDark;
  @override
  final TrModel? from;
  @override
  final TrModel? to;

  @override
  String toString() {
    return 'TrState(translateText: $translateText, listOfMessage: $listOfMessage, isLoading: $isLoading, imagePath: $imagePath, isEmpt: $isEmpt, isDark: $isDark, from: $from, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrStateImpl &&
            (identical(other.translateText, translateText) ||
                other.translateText == translateText) &&
            const DeepCollectionEquality()
                .equals(other._listOfMessage, _listOfMessage) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.isEmpt, isEmpt) || other.isEmpt == isEmpt) &&
            (identical(other.isDark, isDark) || other.isDark == isDark) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      translateText,
      const DeepCollectionEquality().hash(_listOfMessage),
      isLoading,
      imagePath,
      isEmpt,
      isDark,
      from,
      to);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrStateImplCopyWith<_$TrStateImpl> get copyWith =>
      __$$TrStateImplCopyWithImpl<_$TrStateImpl>(this, _$identity);
}

abstract class _TrState implements TrState {
  const factory _TrState(
      {final String translateText,
      final List<MessageModel> listOfMessage,
      final bool isLoading,
      final String? imagePath,
      final bool isEmpt,
      final bool isDark,
      final TrModel? from,
      final TrModel? to}) = _$TrStateImpl;

  @override
  String get translateText;
  @override
  List<MessageModel> get listOfMessage;
  @override
  bool get isLoading;
  @override
  String? get imagePath;
  @override
  bool get isEmpt;
  @override
  bool get isDark;
  @override
  TrModel? get from;
  @override
  TrModel? get to;
  @override
  @JsonKey(ignore: true)
  _$$TrStateImplCopyWith<_$TrStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

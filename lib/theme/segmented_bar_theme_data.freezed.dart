// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'segmented_bar_theme_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SegmentedBarThemeData {
  Color get background => throw _privateConstructorUsedError;
  Color get foregroundColor => throw _privateConstructorUsedError;
  Color get selectedBackgroundColor => throw _privateConstructorUsedError;
  Color get selectedForegroundColor => throw _privateConstructorUsedError;
  TextStyle get selectedLabelStyle => throw _privateConstructorUsedError;
  TextStyle get unselectedLabelStyle => throw _privateConstructorUsedError;
  EdgeInsets get padding => throw _privateConstructorUsedError;
  ShapeBorder get shape => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
}

/// @nodoc

class _$SegmentedBarThemeDataImpl extends _SegmentedBarThemeData {
  const _$SegmentedBarThemeDataImpl(
      {required this.background,
      required this.foregroundColor,
      required this.selectedBackgroundColor,
      required this.selectedForegroundColor,
      required this.selectedLabelStyle,
      required this.unselectedLabelStyle,
      this.padding = kDefaultSegmentedBarPadding,
      this.shape = const StadiumBorder(),
      this.height = kDefaultSegmentedBarHeight})
      : super._();

  @override
  final Color background;
  @override
  final Color foregroundColor;
  @override
  final Color selectedBackgroundColor;
  @override
  final Color selectedForegroundColor;
  @override
  final TextStyle selectedLabelStyle;
  @override
  final TextStyle unselectedLabelStyle;
  @override
  @JsonKey()
  final EdgeInsets padding;
  @override
  @JsonKey()
  final ShapeBorder shape;
  @override
  @JsonKey()
  final double height;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SegmentedBarThemeDataImpl &&
            (identical(other.background, background) ||
                other.background == background) &&
            (identical(other.foregroundColor, foregroundColor) ||
                other.foregroundColor == foregroundColor) &&
            (identical(
                    other.selectedBackgroundColor, selectedBackgroundColor) ||
                other.selectedBackgroundColor == selectedBackgroundColor) &&
            (identical(
                    other.selectedForegroundColor, selectedForegroundColor) ||
                other.selectedForegroundColor == selectedForegroundColor) &&
            (identical(other.selectedLabelStyle, selectedLabelStyle) ||
                other.selectedLabelStyle == selectedLabelStyle) &&
            (identical(other.unselectedLabelStyle, unselectedLabelStyle) ||
                other.unselectedLabelStyle == unselectedLabelStyle) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.height, height) || other.height == height));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      background,
      foregroundColor,
      selectedBackgroundColor,
      selectedForegroundColor,
      selectedLabelStyle,
      unselectedLabelStyle,
      padding,
      shape,
      height);
}

abstract class _SegmentedBarThemeData extends SegmentedBarThemeData {
  const factory _SegmentedBarThemeData(
      {required final Color background,
      required final Color foregroundColor,
      required final Color selectedBackgroundColor,
      required final Color selectedForegroundColor,
      required final TextStyle selectedLabelStyle,
      required final TextStyle unselectedLabelStyle,
      final EdgeInsets padding,
      final ShapeBorder shape,
      final double height}) = _$SegmentedBarThemeDataImpl;
  const _SegmentedBarThemeData._() : super._();

  @override
  Color get background;
  @override
  Color get foregroundColor;
  @override
  Color get selectedBackgroundColor;
  @override
  Color get selectedForegroundColor;
  @override
  TextStyle get selectedLabelStyle;
  @override
  TextStyle get unselectedLabelStyle;
  @override
  EdgeInsets get padding;
  @override
  ShapeBorder get shape;
  @override
  double get height;
}

/// @nodoc
mixin _$SegmentedBarStyle {
  Color? get background => throw _privateConstructorUsedError;
  Color? get foregroundColor => throw _privateConstructorUsedError;
  Color? get selectedBackgroundColor => throw _privateConstructorUsedError;
  Color? get selectedForegroundColor => throw _privateConstructorUsedError;
  EdgeInsets? get padding => throw _privateConstructorUsedError;
  ShapeBorder? get shape => throw _privateConstructorUsedError;
  double? get height => throw _privateConstructorUsedError;
  TextStyle? get selectedLabelStyle => throw _privateConstructorUsedError;
  TextStyle? get unselectedLabelStyle => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SegmentedBarStyleCopyWith<SegmentedBarStyle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SegmentedBarStyleCopyWith<$Res> {
  factory $SegmentedBarStyleCopyWith(
          SegmentedBarStyle value, $Res Function(SegmentedBarStyle) then) =
      _$SegmentedBarStyleCopyWithImpl<$Res, SegmentedBarStyle>;
  @useResult
  $Res call(
      {Color? background,
      Color? foregroundColor,
      Color? selectedBackgroundColor,
      Color? selectedForegroundColor,
      EdgeInsets? padding,
      ShapeBorder? shape,
      double? height,
      TextStyle? selectedLabelStyle,
      TextStyle? unselectedLabelStyle});
}

/// @nodoc
class _$SegmentedBarStyleCopyWithImpl<$Res, $Val extends SegmentedBarStyle>
    implements $SegmentedBarStyleCopyWith<$Res> {
  _$SegmentedBarStyleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? background = freezed,
    Object? foregroundColor = freezed,
    Object? selectedBackgroundColor = freezed,
    Object? selectedForegroundColor = freezed,
    Object? padding = freezed,
    Object? shape = freezed,
    Object? height = freezed,
    Object? selectedLabelStyle = freezed,
    Object? unselectedLabelStyle = freezed,
  }) {
    return _then(_value.copyWith(
      background: freezed == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as Color?,
      foregroundColor: freezed == foregroundColor
          ? _value.foregroundColor
          : foregroundColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      selectedBackgroundColor: freezed == selectedBackgroundColor
          ? _value.selectedBackgroundColor
          : selectedBackgroundColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      selectedForegroundColor: freezed == selectedForegroundColor
          ? _value.selectedForegroundColor
          : selectedForegroundColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      padding: freezed == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as EdgeInsets?,
      shape: freezed == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as ShapeBorder?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      selectedLabelStyle: freezed == selectedLabelStyle
          ? _value.selectedLabelStyle
          : selectedLabelStyle // ignore: cast_nullable_to_non_nullable
              as TextStyle?,
      unselectedLabelStyle: freezed == unselectedLabelStyle
          ? _value.unselectedLabelStyle
          : unselectedLabelStyle // ignore: cast_nullable_to_non_nullable
              as TextStyle?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SegmentedBarStyleImplCopyWith<$Res>
    implements $SegmentedBarStyleCopyWith<$Res> {
  factory _$$SegmentedBarStyleImplCopyWith(_$SegmentedBarStyleImpl value,
          $Res Function(_$SegmentedBarStyleImpl) then) =
      __$$SegmentedBarStyleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Color? background,
      Color? foregroundColor,
      Color? selectedBackgroundColor,
      Color? selectedForegroundColor,
      EdgeInsets? padding,
      ShapeBorder? shape,
      double? height,
      TextStyle? selectedLabelStyle,
      TextStyle? unselectedLabelStyle});
}

/// @nodoc
class __$$SegmentedBarStyleImplCopyWithImpl<$Res>
    extends _$SegmentedBarStyleCopyWithImpl<$Res, _$SegmentedBarStyleImpl>
    implements _$$SegmentedBarStyleImplCopyWith<$Res> {
  __$$SegmentedBarStyleImplCopyWithImpl(_$SegmentedBarStyleImpl _value,
      $Res Function(_$SegmentedBarStyleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? background = freezed,
    Object? foregroundColor = freezed,
    Object? selectedBackgroundColor = freezed,
    Object? selectedForegroundColor = freezed,
    Object? padding = freezed,
    Object? shape = freezed,
    Object? height = freezed,
    Object? selectedLabelStyle = freezed,
    Object? unselectedLabelStyle = freezed,
  }) {
    return _then(_$SegmentedBarStyleImpl(
      background: freezed == background
          ? _value.background
          : background // ignore: cast_nullable_to_non_nullable
              as Color?,
      foregroundColor: freezed == foregroundColor
          ? _value.foregroundColor
          : foregroundColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      selectedBackgroundColor: freezed == selectedBackgroundColor
          ? _value.selectedBackgroundColor
          : selectedBackgroundColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      selectedForegroundColor: freezed == selectedForegroundColor
          ? _value.selectedForegroundColor
          : selectedForegroundColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      padding: freezed == padding
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as EdgeInsets?,
      shape: freezed == shape
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as ShapeBorder?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      selectedLabelStyle: freezed == selectedLabelStyle
          ? _value.selectedLabelStyle
          : selectedLabelStyle // ignore: cast_nullable_to_non_nullable
              as TextStyle?,
      unselectedLabelStyle: freezed == unselectedLabelStyle
          ? _value.unselectedLabelStyle
          : unselectedLabelStyle // ignore: cast_nullable_to_non_nullable
              as TextStyle?,
    ));
  }
}

/// @nodoc

class _$SegmentedBarStyleImpl
    with DiagnosticableTreeMixin
    implements _SegmentedBarStyle {
  const _$SegmentedBarStyleImpl(
      {this.background,
      this.foregroundColor,
      this.selectedBackgroundColor,
      this.selectedForegroundColor,
      this.padding,
      this.shape,
      this.height,
      this.selectedLabelStyle,
      this.unselectedLabelStyle});

  @override
  final Color? background;
  @override
  final Color? foregroundColor;
  @override
  final Color? selectedBackgroundColor;
  @override
  final Color? selectedForegroundColor;
  @override
  final EdgeInsets? padding;
  @override
  final ShapeBorder? shape;
  @override
  final double? height;
  @override
  final TextStyle? selectedLabelStyle;
  @override
  final TextStyle? unselectedLabelStyle;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SegmentedBarStyle(background: $background, foregroundColor: $foregroundColor, selectedBackgroundColor: $selectedBackgroundColor, selectedForegroundColor: $selectedForegroundColor, padding: $padding, shape: $shape, height: $height, selectedLabelStyle: $selectedLabelStyle, unselectedLabelStyle: $unselectedLabelStyle)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SegmentedBarStyle'))
      ..add(DiagnosticsProperty('background', background))
      ..add(DiagnosticsProperty('foregroundColor', foregroundColor))
      ..add(DiagnosticsProperty(
          'selectedBackgroundColor', selectedBackgroundColor))
      ..add(DiagnosticsProperty(
          'selectedForegroundColor', selectedForegroundColor))
      ..add(DiagnosticsProperty('padding', padding))
      ..add(DiagnosticsProperty('shape', shape))
      ..add(DiagnosticsProperty('height', height))
      ..add(DiagnosticsProperty('selectedLabelStyle', selectedLabelStyle))
      ..add(DiagnosticsProperty('unselectedLabelStyle', unselectedLabelStyle));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SegmentedBarStyleImpl &&
            (identical(other.background, background) ||
                other.background == background) &&
            (identical(other.foregroundColor, foregroundColor) ||
                other.foregroundColor == foregroundColor) &&
            (identical(
                    other.selectedBackgroundColor, selectedBackgroundColor) ||
                other.selectedBackgroundColor == selectedBackgroundColor) &&
            (identical(
                    other.selectedForegroundColor, selectedForegroundColor) ||
                other.selectedForegroundColor == selectedForegroundColor) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.selectedLabelStyle, selectedLabelStyle) ||
                other.selectedLabelStyle == selectedLabelStyle) &&
            (identical(other.unselectedLabelStyle, unselectedLabelStyle) ||
                other.unselectedLabelStyle == unselectedLabelStyle));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      background,
      foregroundColor,
      selectedBackgroundColor,
      selectedForegroundColor,
      padding,
      shape,
      height,
      selectedLabelStyle,
      unselectedLabelStyle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SegmentedBarStyleImplCopyWith<_$SegmentedBarStyleImpl> get copyWith =>
      __$$SegmentedBarStyleImplCopyWithImpl<_$SegmentedBarStyleImpl>(
          this, _$identity);
}

abstract class _SegmentedBarStyle implements SegmentedBarStyle {
  const factory _SegmentedBarStyle(
      {final Color? background,
      final Color? foregroundColor,
      final Color? selectedBackgroundColor,
      final Color? selectedForegroundColor,
      final EdgeInsets? padding,
      final ShapeBorder? shape,
      final double? height,
      final TextStyle? selectedLabelStyle,
      final TextStyle? unselectedLabelStyle}) = _$SegmentedBarStyleImpl;

  @override
  Color? get background;
  @override
  Color? get foregroundColor;
  @override
  Color? get selectedBackgroundColor;
  @override
  Color? get selectedForegroundColor;
  @override
  EdgeInsets? get padding;
  @override
  ShapeBorder? get shape;
  @override
  double? get height;
  @override
  TextStyle? get selectedLabelStyle;
  @override
  TextStyle? get unselectedLabelStyle;
  @override
  @JsonKey(ignore: true)
  _$$SegmentedBarStyleImplCopyWith<_$SegmentedBarStyleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

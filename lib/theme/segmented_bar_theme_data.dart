import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_3_demo/assets/asset_fonts.dart';

part 'segmented_bar_theme_data.freezed.dart';

const double kDefaultSegmentedBarHeight = 48.0;
const EdgeInsets kDefaultSegmentedBarPadding = EdgeInsets.symmetric(
  horizontal: 12.0,
  vertical: 8.0,
);

@Freezed(
  copyWith: false,
  toStringOverride: false,
  map: FreezedMapOptions(map: false, mapOrNull: false, maybeMap: false),
  when: FreezedWhenOptions(when: false, whenOrNull: false, maybeWhen: false),
)
class SegmentedBarThemeData extends ThemeExtension<SegmentedBarThemeData>
    with DiagnosticableTreeMixin, _$SegmentedBarThemeData {
  const SegmentedBarThemeData._();

  const factory SegmentedBarThemeData({
    required Color background,
    required Color foregroundColor,
    required Color selectedBackgroundColor,
    required Color selectedForegroundColor,
    required TextStyle selectedLabelStyle,
    required TextStyle unselectedLabelStyle,
    @Default(kDefaultSegmentedBarPadding) EdgeInsets padding,
    @Default(StadiumBorder()) ShapeBorder shape,
    @Default(kDefaultSegmentedBarHeight) double height,
  }) = _SegmentedBarThemeData;

  factory SegmentedBarThemeData.inverted({
    required Color background,
    required Color foregroundColor,
    required TextStyle labelStyle,
    EdgeInsets padding = kDefaultSegmentedBarPadding,
    ShapeBorder shape = const StadiumBorder(),
    double height = kDefaultSegmentedBarHeight,
  }) =>
      SegmentedBarThemeData(
        background: background,
        foregroundColor: foregroundColor,
        selectedBackgroundColor: foregroundColor,
        selectedForegroundColor: background,
        padding: padding,
        shape: shape,
        height: height,
        selectedLabelStyle: labelStyle,
        unselectedLabelStyle: labelStyle,
      );

  /// Creates a SegmentedBarThemeData with some reasonable default values.
  factory SegmentedBarThemeData.fallback() => const SegmentedBarThemeData(
        background: Color(0xA1111111),
        foregroundColor: Colors.white,
        selectedBackgroundColor: Colors.white,
        selectedForegroundColor: Colors.black,
        selectedLabelStyle: TextStyle(
          fontSize: 13.0,
          letterSpacing: 0.5,
          fontWeight: FontWeight.normal,
          fontFamily: RumorFonts.abcdiatype,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 13.0,
          letterSpacing: 0.5,
          fontWeight: FontWeight.normal,
          fontFamily: RumorFonts.abcdiatype,
        ),
      );

  @override
  ThemeExtension<SegmentedBarThemeData> copyWith({
    Color? background,
    Color? foregroundColor,
    Color? selectedBackgroundColor,
    Color? selectedForegroundColor,
    EdgeInsets? padding,
    ShapeBorder? shape,
    double? height,
    TextStyle? selectedLabelStyle,
    TextStyle? unselectedLabelStyle,
  }) {
    return SegmentedBarThemeData(
      background: background ?? this.background,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      selectedBackgroundColor:
          selectedBackgroundColor ?? this.selectedBackgroundColor,
      selectedForegroundColor:
          selectedForegroundColor ?? this.selectedForegroundColor,
      padding: padding ?? this.padding,
      shape: shape ?? this.shape,
      height: height ?? this.height,
      selectedLabelStyle: selectedLabelStyle ?? this.selectedLabelStyle,
      unselectedLabelStyle: unselectedLabelStyle ?? this.unselectedLabelStyle,
    );
  }

  @override
  ThemeExtension<SegmentedBarThemeData> lerp(
    covariant ThemeExtension<SegmentedBarThemeData>? other,
    double t,
  ) {
    if (other is! SegmentedBarThemeData) {
      return this;
    }
    return SegmentedBarThemeData(
      background: Color.lerp(background, other.background, t)!,
      foregroundColor: Color.lerp(foregroundColor, other.foregroundColor, t)!,
      selectedBackgroundColor: Color.lerp(
          selectedBackgroundColor, other.selectedBackgroundColor, t)!,
      selectedForegroundColor: Color.lerp(
          selectedForegroundColor, other.selectedForegroundColor, t)!,
      padding: EdgeInsets.lerp(padding, other.padding, t)!,
      shape: ShapeBorder.lerp(shape, other.shape, t)!,
      height: lerpDouble(height, other.height, t)!,
      selectedLabelStyle: TextStyle.lerp(
        selectedLabelStyle,
        other.selectedLabelStyle,
        t,
      )!,
      unselectedLabelStyle: TextStyle.lerp(
        unselectedLabelStyle,
        other.unselectedLabelStyle,
        t,
      )!,
    );
  }

  SegmentedBarThemeData mergeFromStyle(SegmentedBarStyle style) {
    return copyWith(
      background: style.background,
      foregroundColor: style.foregroundColor,
      selectedBackgroundColor: style.selectedBackgroundColor,
      selectedForegroundColor: style.selectedForegroundColor,
      padding: style.padding,
      shape: style.shape,
      height: style.height,
      selectedLabelStyle: selectedLabelStyle.merge(style.selectedLabelStyle),
      unselectedLabelStyle:
          unselectedLabelStyle.merge(style.unselectedLabelStyle),
    ) as SegmentedBarThemeData;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(ColorProperty('background', background));
    properties.add(ColorProperty('foregroundColor', foregroundColor));
    properties
        .add(ColorProperty('selectedBackgroundColor', selectedBackgroundColor));
    properties
        .add(ColorProperty('selectedForegroundColor', selectedForegroundColor));
    properties.add(DiagnosticsProperty<EdgeInsets>('padding', padding,
        defaultValue: kDefaultSegmentedBarPadding));
    properties.add(DiagnosticsProperty<double>('height', height,
        defaultValue: kDefaultSegmentedBarHeight));
    properties.add(DiagnosticsProperty<ShapeBorder>('shape', shape,
        defaultValue: const StadiumBorder()));
    properties.add(DiagnosticsProperty<TextStyle?>(
        'selectedLabelStyle', selectedLabelStyle));
    properties.add(DiagnosticsProperty<TextStyle?>(
        'unselectedLabelStyle', unselectedLabelStyle));
  }
}

@Freezed(
  map: FreezedMapOptions(map: false, mapOrNull: false, maybeMap: false),
  when: FreezedWhenOptions(when: false, whenOrNull: false, maybeWhen: false),
)
class SegmentedBarStyle with _$SegmentedBarStyle {
  const factory SegmentedBarStyle({
    Color? background,
    Color? foregroundColor,
    Color? selectedBackgroundColor,
    Color? selectedForegroundColor,
    EdgeInsets? padding,
    ShapeBorder? shape,
    double? height,
    TextStyle? selectedLabelStyle,
    TextStyle? unselectedLabelStyle,
  }) = _SegmentedBarStyle;

  factory SegmentedBarStyle.inverted({
    required Color background,
    required Color foregroundColor,
    EdgeInsets? padding,
    ShapeBorder? shape,
    double? height,
    TextStyle? labelStyle,
  }) =>
      SegmentedBarStyle(
        background: background,
        foregroundColor: foregroundColor,
        selectedBackgroundColor: foregroundColor,
        selectedForegroundColor: background,
        padding: padding,
        shape: shape,
        height: height,
        selectedLabelStyle: labelStyle,
        unselectedLabelStyle: labelStyle,
      );
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_3_demo/assets/asset_fonts.dart';
import 'package:material_3_demo/assets/asset_images.dart';
import 'package:material_3_demo/theme/segmented_bar_theme_data.dart';

final ThemeData lightTheme = _lightTheme();

ThemeData _lightTheme() {
  const unselectedColor = Color(0xFF8A8A8A);
  const disable = Color(0xFFFAFAFA);
  const onDisable = Color(0xFF8D8D8D);
  const scheme = ColorScheme(
    brightness: Brightness.light,
    surface: Colors.white,
    surfaceTint: Color(0xFFEEEEEE),
    onSurface: Color(0xFF0F0F0F),
    onSurfaceVariant: Color(0xFF383D40),
    surfaceBright: Color(0XFFF9F9F9),
    surfaceDim: Color(0xFFD5D5D5),
    surfaceContainerLowest: Colors.white,
    surfaceContainerLow: Color(0xFFF6F3F2),
    surfaceContainer: Color(0xFFEEEEEE),
    surfaceContainerHigh: Color(0xFFEBE7E7),
    surfaceContainerHighest: Color(0xFFE5E2E1),
    inverseSurface: Color(0xFF0F0F0F),
    onInverseSurface: Color(0xFFF4F0EF),
    outline: Color(0xFF696969),
    outlineVariant: Color(0xFF838282),
    scrim: Colors.black26,
    shadow: Colors.black12,
    error: Color(0xFFBA1A1A),
    onError: Colors.white,
    errorContainer: Color(0xFFDE7F7C),
    onErrorContainer: Color(0xFF420000),
    primary: Color(0xFF1F1F1F),
    onPrimary: Colors.white,
    primaryContainer: Color(0xFF616161),
    onPrimaryContainer: Color(0xFFE4E8EC),
    inversePrimary: Colors.white,
    secondary: Color(0xFFA4887E),
    onSecondary: Colors.white,
    secondaryContainer: Color(0xFFCDBAB1),
    onSecondaryContainer: Color(0xFF574135),
    tertiary: Color(0xFF383D40),
    onTertiary: Colors.white,
    tertiaryContainer: Color(0xFF8A979E),
    onTertiaryContainer: Color(0xFF171A1C),
  );
  const textTheme = TextTheme(
    headlineLarge: TextStyle(
      fontFamily: RumorFonts.romie,
      fontSize: 34,
      height: 1.25,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: TextStyle(
      fontFamily: RumorFonts.romie,
      fontSize: 24,
      height: 1.3,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: TextStyle(
      fontFamily: RumorFonts.romie,
      fontSize: 20,
      height: 1.3,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.25,
    ),
    titleLarge: TextStyle(
      fontFamily: RumorFonts.abcdiatype,
      fontSize: 24,
      height: 1.0,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.4,
    ),
    titleMedium: TextStyle(
      fontFamily: RumorFonts.abcdiatype,
      fontSize: 20,
      height: 1.2,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.4,
    ),
    titleSmall: TextStyle(
      fontFamily: RumorFonts.romie,
      fontSize: 16,
      height: 1.5,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.4,
    ),
    bodyLarge: TextStyle(
      fontFamily: RumorFonts.abcdiatype,
      fontSize: 16,
      height: 1.5,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
    ),
    bodyMedium: TextStyle(
      fontFamily: RumorFonts.abcdiatype,
      fontSize: 14,
      height: 1.5,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
    ),
    bodySmall: TextStyle(
      fontFamily: RumorFonts.abcdiatype,
      fontSize: 12,
      height: 1.5,
      fontWeight: FontWeight.w400,
      letterSpacing: 0.4,
    ),
    labelLarge: TextStyle(
      fontFamily: RumorFonts.abcdiatype,
      fontSize: 15,
      height: 1.6,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.4,
    ),
    labelMedium: TextStyle(
      fontFamily: RumorFonts.romie,
      fontSize: 13,
      height: 1.6,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.4,
    ),
    labelSmall: TextStyle(
      fontFamily: RumorFonts.romie,
      fontSize: 10,
      height: 1.6,
      fontWeight: FontWeight.normal,
      letterSpacing: 0.4,
    ),
  );
  final primaryTextTheme = textTheme.apply(
    bodyColor: scheme.onPrimary,
    displayColor: scheme.onPrimary,
  );

  final colorOnDisableState = WidgetStateColor.resolveWith(
    (states) =>
        states.contains(WidgetState.disabled) ? onDisable : scheme.onSurface,
  );

  final segmentedStyle =
      primaryTextTheme.labelLarge!.copyWith(letterSpacing: -0.5);

  return ThemeData(
    actionIconTheme: ActionIconThemeData(
      backButtonIconBuilder: (context) => Container(
        height: 44,
        width: 44,
        decoration: BoxDecoration(
          color: scheme.surface,
          shape: BoxShape.circle,
        ),
        child: const Padding(
          padding: EdgeInsets.all(13),
          child: Image(image: AssetImage(RumorImages.arrowBack)),
        ),
      ),
    ),
    adaptations: const [_DefaultSwitchThemeAdaptation()],
    appBarTheme: AppBarTheme(
      elevation: 0,
      scrolledUnderElevation: 0,
      backgroundColor: scheme.surface,
      foregroundColor: scheme.onSurface,
      titleTextStyle: textTheme.headlineMedium,
    ),
    applyElevationOverlayColor: false,
    badgeTheme: const BadgeThemeData(),
    bannerTheme: const MaterialBannerThemeData(),
    bottomAppBarTheme: const BottomAppBarTheme(),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: scheme.surfaceContainerLowest,
      elevation: 0.0,
      showDragHandle: true,
      constraints: const BoxConstraints(minWidth: 400, maxWidth: 450.0),
      dragHandleSize: const Size(30.0, 6.0),
      dragHandleColor: scheme.surfaceDim,
      modalElevation: 0.0,
      modalBarrierColor: Colors.black45,
      modalBackgroundColor: scheme.surfaceContainerLowest,
    ),
    buttonTheme: const ButtonThemeData(),
    canvasColor: Colors.white,
    cardColor: Colors.white,
    cardTheme: const CardTheme(
      elevation: 0.0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
    ),
    checkboxTheme: const CheckboxThemeData(),
    chipTheme: ChipThemeData(
      shape: const StadiumBorder(),
      side: BorderSide(color: scheme.surfaceDim),
      backgroundColor: scheme.surface,
      surfaceTintColor: scheme.surface,
      elevation: 0.0,
      selectedColor: scheme.primary,
      secondarySelectedColor: scheme.secondary,
      secondaryLabelStyle: textTheme.bodySmall!.copyWith(
        fontWeight: FontWeight.w500,
        color: WidgetStateColor.resolveWith(
          (states) {
            return states.contains(WidgetState.disabled)
                ? onDisable
                : states.contains(WidgetState.selected)
                    ? scheme.onSecondary
                    : scheme.onSurface;
          },
        ),
      ),
      labelStyle: textTheme.bodySmall!.copyWith(
        fontWeight: FontWeight.w500,
        color: WidgetStateColor.resolveWith(
          (states) {
            return states.contains(WidgetState.disabled)
                ? onDisable
                : states.contains(WidgetState.selected)
                    ? scheme.onPrimary
                    : scheme.onSurface;
          },
        ),
      ),
    ),
    colorScheme: scheme,
    cupertinoOverrideTheme: const CupertinoThemeData(
      textTheme: CupertinoTextThemeData(
        dateTimePickerTextStyle: TextStyle(
          fontFamily: RumorFonts.abcdiatype,
          fontWeight: FontWeight.w300,
          fontSize: 24,
        ),
      ),
    ),
    dataTableTheme: const DataTableThemeData(),
    datePickerTheme: DatePickerThemeData(
      backgroundColor: scheme.surface,
      surfaceTintColor: scheme.surface,
      elevation: 0.0,
      confirmButtonStyle: ButtonStyle(
        overlayColor: WidgetStatePropertyAll(
          scheme.secondary.withOpacity(0.16),
        ),
        foregroundColor: WidgetStatePropertyAll(scheme.secondary),
        textStyle: const WidgetStatePropertyAll(
          TextStyle(
            fontSize: 14.0,
            height: 1.5,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.1,
          ),
        ),
      ),
      cancelButtonStyle: ButtonStyle(
        overlayColor: WidgetStatePropertyAll(
          scheme.onSurface.withOpacity(0.16),
        ),
        foregroundColor: WidgetStatePropertyAll(scheme.onSurface),
        textStyle: const WidgetStatePropertyAll(
          TextStyle(
            fontSize: 14.0,
            height: 1.5,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.1,
          ),
        ),
      ),
      dayShape: const WidgetStatePropertyAll(CircleBorder()),
      dayOverlayColor: WidgetStatePropertyAll(
        scheme.secondary.withOpacity(0.16),
      ),
      rangePickerShape: const CircleBorder(),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      dividerColor: scheme.outlineVariant,
      todayBorder: BorderSide(color: scheme.secondary),
      todayBackgroundColor: WidgetStatePropertyAll(scheme.surface),
      todayForegroundColor: WidgetStatePropertyAll(scheme.onSurface),
      dayStyle: textTheme.labelMedium,
    ),
    dialogBackgroundColor: scheme.surfaceContainerLowest,
    dialogTheme: DialogTheme(
      backgroundColor: scheme.surfaceContainerLowest,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
    ),
    disabledColor: disable,
    dividerColor: scheme.outlineVariant,
    dividerTheme: DividerThemeData(
      color: scheme.outlineVariant,
      thickness: 0.5,
    ),
    drawerTheme: const DrawerThemeData(),
    dropdownMenuTheme: const DropdownMenuThemeData(),
    expansionTileTheme: const ExpansionTileThemeData(),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: scheme.primary,
        foregroundColor: scheme.onPrimary,
        disabledBackgroundColor: disable,
        disabledForegroundColor: onDisable,
        disabledIconColor: onDisable,
        minimumSize: const Size(double.infinity, 48),
        shape: const StadiumBorder(),
        textStyle: textTheme.bodyMedium,
      ),
    ),
    extensions: [
      SegmentedBarThemeData(
        shape: const StadiumBorder(),
        padding: const EdgeInsets.all(6.0),
        background: scheme.surface,
        foregroundColor: scheme.onSurface,
        selectedBackgroundColor: scheme.primary,
        selectedForegroundColor: scheme.onPrimary,
        selectedLabelStyle: segmentedStyle,
        unselectedLabelStyle: segmentedStyle,
      ),
    ],
    filledButtonTheme: const FilledButtonThemeData(),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(),
    focusColor: null,
    fontFamily: RumorFonts.abcdiatype,
    fontFamilyFallback: const [RumorFonts.romie],
    highlightColor: null,
    hintColor: const Color(0xFF949494),
    hoverColor: null,
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(foregroundColor: scheme.onSurface),
    ),
    iconTheme: const IconThemeData(),
    indicatorColor: null,
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: WidgetStateTextStyle.resolveWith((states) {
        const style = TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
        );
        if (states.contains(WidgetState.disabled)) {
          return style.copyWith(color: onDisable);
        }
        return style.copyWith(color: scheme.onSurface);
      }),
      hintStyle:
          const TextStyle(color: Color(0xFF949494)).merge(textTheme.bodyMedium),
      helperStyle:
          const TextStyle(color: Color(0xFF696969)).merge(textTheme.bodyMedium),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      floatingLabelAlignment: FloatingLabelAlignment.start,
      floatingLabelStyle: WidgetStateTextStyle.resolveWith((states) {
        final TextStyle style;
        if (states.contains(WidgetState.disabled)) {
          style = const TextStyle(color: onDisable, height: 1.0);
        } else {
          style = const TextStyle(color: Color(0xFF696969), height: 1.0);
        }
        return style.merge(textTheme.bodySmall);
      }),
      filled: true,
      fillColor: WidgetStateColor.resolveWith(
        (states) => states.contains(WidgetState.disabled)
            ? disable
            : scheme.surfaceContainer,
      ),
      prefixIconColor: colorOnDisableState,
      suffixIconColor: colorOnDisableState,
      border: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: scheme.outline),
        borderRadius: BorderRadius.circular(8),
      ),
      disabledBorder: const OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      contentPadding: const EdgeInsets.all(8),
    ),
    listTileTheme: const ListTileThemeData(),
    materialTapTargetSize: MaterialTapTargetSize.padded,
    menuBarTheme: const MenuBarThemeData(),
    menuButtonTheme: const MenuButtonThemeData(),
    menuTheme: const MenuThemeData(),
    navigationBarTheme: const NavigationBarThemeData(),
    navigationDrawerTheme: const NavigationDrawerThemeData(),
    navigationRailTheme: const NavigationRailThemeData(),
    outlinedButtonTheme: const OutlinedButtonThemeData(),
    pageTransitionsTheme: const PageTransitionsTheme(),
    popupMenuTheme: const PopupMenuThemeData(),
    primaryTextTheme: primaryTextTheme,
    progressIndicatorTheme: const ProgressIndicatorThemeData(),
    radioTheme: const RadioThemeData(),
    scaffoldBackgroundColor: scheme.surface,
    scrollbarTheme: const ScrollbarThemeData(),
    searchBarTheme: const SearchBarThemeData(),
    searchViewTheme: const SearchViewThemeData(),
    secondaryHeaderColor: null,
    segmentedButtonTheme: const SegmentedButtonThemeData(),
    shadowColor: null,
    sliderTheme: const SliderThemeData(),
    snackBarTheme: SnackBarThemeData(
      insetPadding: const EdgeInsets.all(16.0),
      backgroundColor: scheme.secondary,
      actionBackgroundColor: ElevationOverlay.applySurfaceTint(
        scheme.surface,
        scheme.secondaryContainer,
        4.0,
      ),
      actionTextColor: scheme.onSecondaryContainer,
      contentTextStyle: TextStyle(
        color: scheme.onSecondary,
        fontWeight: FontWeight.w500,
        fontFamily: RumorFonts.abcdiatype,
        fontSize: 16,
      ),
      closeIconColor: scheme.onSecondaryContainer,
    ),
    splashColor: null,
    splashFactory: InkSparkle.splashFactory,
    switchTheme: SwitchThemeData(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      trackOutlineWidth: const WidgetStatePropertyAll(0),
      thumbIcon: WidgetStateProperty.resolveWith((states) {
        final isDisabled = states.contains(WidgetState.disabled);
        final isSelected = states.contains(WidgetState.selected);

        if (isDisabled) {
          return Icon(
            Icons.circle,
            color: isSelected ? scheme.secondary : onDisable,
          );
        }
        return Icon(
          Icons.circle,
          color: isSelected ? scheme.secondary : Colors.white,
        );
      }),
      thumbColor: WidgetStateProperty.resolveWith((states) {
        final isDisabled = states.contains(WidgetState.disabled);
        final isSelected = states.contains(WidgetState.selected);

        if (isDisabled) {
          return isSelected
              ? scheme.secondary
              : ElevationOverlay.applySurfaceTint(
                  disable,
                  scheme.secondary,
                  4.0,
                );
        }
        return isSelected ? scheme.secondary : Colors.white;
      }),
      trackColor: WidgetStateProperty.resolveWith((states) {
        final isDisabled = states.contains(WidgetState.disabled);
        final isSelected = states.contains(WidgetState.selected);
        final isFocusedOrPressed = states.contains(WidgetState.focused) ||
            states.contains(WidgetState.pressed);

        if (isDisabled) {
          if (isSelected) {
            return ElevationOverlay.applySurfaceTint(
              disable,
              scheme.secondaryContainer,
              4.0,
            );
          } else if (isFocusedOrPressed) {
            return ElevationOverlay.applySurfaceTint(
              disable,
              scheme.secondaryContainer,
              4.0,
            );
          }
          return disable;
        } else if (isSelected) {
          return scheme.secondaryContainer;
        } else if (isFocusedOrPressed) {
          return scheme.secondaryContainer;
        }
        return unselectedColor;
      }),
    ),
    tabBarTheme: TabBarTheme(
      indicatorColor: scheme.primary,
      labelStyle: textTheme.bodyLarge,
      labelColor: scheme.onSurface,
      unselectedLabelColor: scheme.onPrimary,
      unselectedLabelStyle: textTheme.bodyLarge,
      indicator: const ShapeDecoration(shape: StadiumBorder()),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        side: BorderSide.none,
        alignment: Alignment.center,
        textStyle: textTheme.bodyMedium,
        backgroundColor: Colors.transparent,
        foregroundColor: scheme.primary,
        disabledBackgroundColor: disable,
        disabledForegroundColor: onDisable,
        disabledIconColor: onDisable,
      ),
    ),
    textTheme: textTheme.apply(
      bodyColor: scheme.onSurface,
      displayColor: scheme.onSurface,
    ),
    textSelectionTheme: const TextSelectionThemeData(),
    timePickerTheme: TimePickerThemeData(
      elevation: 0,
      backgroundColor: Colors.grey.shade50,
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16.0)),
      ),
      hourMinuteColor: WidgetStateColor.resolveWith(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.selected)) {
            return scheme.surface;
          }
          return scheme.surfaceContainer;
        },
      ),
      confirmButtonStyle: ButtonStyle(
        overlayColor: WidgetStatePropertyAll(
          scheme.onSurface.withOpacity(0.16),
        ),
        foregroundColor: WidgetStatePropertyAll(scheme.secondary),
        textStyle: const WidgetStatePropertyAll(
          TextStyle(
            fontSize: 14.0,
            height: 1.5,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.1,
          ),
        ),
      ),
      cancelButtonStyle: ButtonStyle(
        overlayColor: WidgetStatePropertyAll(
          scheme.secondary.withOpacity(0.16),
        ),
        foregroundColor: WidgetStatePropertyAll(scheme.onSurface),
        textStyle: const WidgetStatePropertyAll(
          TextStyle(
            fontSize: 14.0,
            height: 1.5,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.1,
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(width: 2.0, color: scheme.secondary),
        ),
      ),
      helpTextStyle: TextStyle(
        fontSize: 16.0,
        height: 1.5,
        fontWeight: FontWeight.w500,
        color: scheme.primary,
        letterSpacing: 0.15,
      ),
      hourMinuteTextColor: scheme.onSurface,
      hourMinuteTextStyle: const TextStyle(
        fontSize: 32.0,
        height: 1.25,
        fontWeight: FontWeight.normal,
        letterSpacing: 0.15,
      ),
      hourMinuteShape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      timeSelectorSeparatorColor: WidgetStatePropertyAll(scheme.onSurface),
      timeSelectorSeparatorTextStyle: const WidgetStatePropertyAll(
        TextStyle(
          fontSize: 48.0,
          height: 1.25,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.normal,
          letterSpacing: 0.15,
        ),
      ),
      dayPeriodTextColor: WidgetStateColor.resolveWith(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.selected)) {
            return scheme.onSecondary;
          }
          return scheme.onSurface;
        },
      ),
      dayPeriodShape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      dayPeriodTextStyle: const TextStyle(
        fontSize: 12.0,
        height: 1.75,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.16,
      ),
      dayPeriodBorderSide: BorderSide(width: 1.0, color: scheme.outline),
      dayPeriodColor: WidgetStateColor.resolveWith(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.selected)) {
            return scheme.secondary;
          }
          return scheme.surfaceContainer;
        },
      ),
    ),
    toggleButtonsTheme: const ToggleButtonsThemeData(),
    typography: Typography.material2021(
      platform: null,
      colorScheme: scheme,
      black: textTheme.apply(
        bodyColor: scheme.primary,
        displayColor: scheme.primary,
      ),
      white: textTheme.apply(
        bodyColor: scheme.onPrimary,
        displayColor: scheme.onPrimary,
      ),
    ),
    tooltipTheme: const TooltipThemeData(),
    unselectedWidgetColor: unselectedColor,
    useMaterial3: true,
    visualDensity: const VisualDensity(),
  );
}

/// SwitchTheme Adaptation to use same style in all platforms
class _DefaultSwitchThemeAdaptation extends Adaptation<SwitchThemeData> {
  const _DefaultSwitchThemeAdaptation();
}

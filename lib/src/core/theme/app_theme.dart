import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get light {
    final ThemeData base = FlexThemeData.light(
      scheme: FlexScheme.bigStone,
      fontFamily: 'Rubik',
      appBarOpacity: 0.0,
      subThemesData: const FlexSubThemesData(
        interactionEffects: true,
        tintedDisabledControls: true,
        useM2StyleDividerInM3: true,
        tabBarDividerColor: Color(0x00000000),
        tabBarIndicatorWeight: 4,
        tabBarIndicatorTopRadius: 0,
        progressIndicatorYear2023: false,
        filledButtonRadius: 10.0,
        elevatedButtonRadius: 10.0,
        outlinedButtonRadius: 10.0,
        inputDecoratorSchemeColor: SchemeColor.primary,
        inputDecoratorIsFilled: true,
        inputDecoratorBackgroundAlpha: 30,
        inputDecoratorBorderSchemeColor: SchemeColor.primary,
        inputDecoratorBorderType: FlexInputBorderType.outline,
        inputDecoratorRadius: 10.0,
        inputDecoratorUnfocusedBorderIsColored: true,
        inputDecoratorBorderWidth: 1.0,
        inputDecoratorFocusedBorderWidth: 2.0,
        listTileIconSchemeColor: SchemeColor.primary,
        alignedDropdown: true,
        appBarCenterTitle: true,
      ),
      keyColors: const FlexKeyColors(
        useSecondary: true,
        useTertiary: true,
        useError: true,
      ),
      variant: FlexSchemeVariant.expressive,
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
    );

    return base.copyWith(
      splashFactory: NoSplash.splashFactory,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      appBarTheme: base.appBarTheme.copyWith(
        iconTheme: const IconThemeData(size: 28),
        titleTextStyle: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  static ThemeData get dark {
    final ThemeData base = FlexThemeData.dark(
      scheme: FlexScheme.bigStone,
      fontFamily: 'Rubik',
      appBarOpacity: 0.0,
      surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
      blendLevel: 8,
      subThemesData: const FlexSubThemesData(
        interactionEffects: true,
        tintedDisabledControls: true,
        blendOnColors: true,
        useM2StyleDividerInM3: true,
        tabBarDividerColor: Color(0x00000000),
        tabBarIndicatorWeight: 4,
        tabBarIndicatorTopRadius: 0,
        progressIndicatorYear2023: false,
        filledButtonRadius: 10.0,
        elevatedButtonRadius: 10.0,
        outlinedButtonRadius: 10.0,
        inputDecoratorSchemeColor: SchemeColor.primary,
        inputDecoratorIsFilled: true,
        inputDecoratorBackgroundAlpha: 30,
        inputDecoratorBorderSchemeColor: SchemeColor.primary,
        inputDecoratorBorderType: FlexInputBorderType.outline,
        inputDecoratorRadius: 10.0,
        inputDecoratorUnfocusedBorderIsColored: true,
        inputDecoratorBorderWidth: 1.0,
        inputDecoratorFocusedBorderWidth: 2.0,
        listTileIconSchemeColor: SchemeColor.primary,
        alignedDropdown: true,
        appBarCenterTitle: true,
      ),
      keyColors: const FlexKeyColors(
        useSecondary: true,
        useTertiary: true,
        useError: true,
      ),
      variant: FlexSchemeVariant.expressive,
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
    );

    return base.copyWith(
      splashFactory: NoSplash.splashFactory,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      hoverColor: Colors.transparent,
      appBarTheme: base.appBarTheme.copyWith(
        iconTheme: const IconThemeData(size: 28),
        titleTextStyle: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

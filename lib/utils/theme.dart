import "package:cais/utils/colors.dart";
import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff415f91),
      surfaceTint: Color(0xff415f91),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffd6e3ff),
      onPrimaryContainer: Color(0xff001b3e),
      secondary: Color(0xff565f71),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffdae2f9),
      onSecondaryContainer: Color(0xff131c2b),
      tertiary: Color(0xff705575),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color.fromARGB(255, 27, 11, 29),
      onTertiaryContainer: Color(0xff28132e),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xff0386D0), // ##32521e
      onSurface: Color(0xff191c20),
      onSurfaceVariant: Color(0xff44474e),
      outline: Color(0xff74777f),
      outlineVariant: Color(0xffc4c6d0),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e3036),
      inversePrimary: Color(0xffaac7ff),
      onBackground: mainColor,

      background: Color.fromARGB(255, 244, 247, 252),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      onBackground: mainColor,
      background: mainColor,
      brightness: Brightness.light,
      primary: Color(0xff234373),
      surfaceTint: Color(0xff415f91),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff5875a8),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff3a4354),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff6c7588),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff523a58),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff876b8c),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff9f9ff),
      onSurface: Color(0xff191c20),
      onSurfaceVariant: Color(0xff40434a),
      outline: Color(0xff5c5f67),
      outlineVariant: Color(0xff787a83),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e3036),
      inversePrimary: Color(0xffaac7ff),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return ColorScheme(
      onBackground: mainColor.withOpacity(.3),
      background: mainColor,
      brightness: Brightness.light,
      primary: const Color(0xff00214a),
      surfaceTint: const Color(0xff415f91),
      onPrimary: const Color(0xffffffff),
      primaryContainer: const Color(0xff234373),
      onPrimaryContainer: const Color(0xffffffff),
      secondary: const Color(0xff192232),
      onSecondary: const Color(0xffffffff),
      secondaryContainer: const Color(0xff3a4354),
      onSecondaryContainer: const Color(0xffffffff),
      tertiary: const Color(0xff301a35),
      onTertiary: const Color(0xffffffff),
      tertiaryContainer: const Color(0xff523a58),
      onTertiaryContainer: const Color(0xffffffff),
      error: const Color(0xff4e0002),
      onError: const Color(0xffffffff),
      errorContainer: const Color(0xff8c0009),
      onErrorContainer: const Color(0xffffffff),
      surface: const Color(0xfff9f9ff),
      onSurface: const Color(0xff000000),
      onSurfaceVariant: const Color(0xff21242b),
      outline: const Color(0xff40434a),
      outlineVariant: const Color(0xff40434a),
      shadow: const Color(0xff000000),
      scrim: const Color(0xff000000),
      inverseSurface: const Color(0xff2e3036),
      inversePrimary: const Color(0xffe5ecff),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      background: Color(0xff302a00),
      onBackground: Color(0xff302a00),
      brightness: Brightness.dark,
      primary: Color(0xffd6c871),
      surfaceTint: Color(0xffd6c871),
      onPrimary: Color(0xff373100),
      primaryContainer: Color(0xff504700),
      onPrimaryContainer: Color(0xfff3e48a),
      secondary: Color(0xffcfc7a2),
      onSecondary: Color(0xff353117),
      secondaryContainer: Color(0xff4c472b),
      onSecondaryContainer: Color(0xffebe3bd),
      tertiary: Color(0xffa7d0b7),
      onTertiary: Color(0xff113725),
      tertiaryContainer: Color(0xff294e3b),
      onTertiaryContainer: Color(0xffc3ecd2),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff15130c),
      onSurface: Color(0xffe7e2d5),
      onSurfaceVariant: Color(0xffccc6b5),
      outline: Color(0xff959181),
      outlineVariant: Color(0xff4a4739),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe7e2d5),
      inversePrimary: Color(0xff695f12),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      background: Color(0xffe7e2d5),
      onBackground: Color(0xff302a00),
      brightness: Brightness.dark,
      primary: Color(0xffdacc74),
      surfaceTint: Color(0xffd6c871),
      onPrimary: Color(0xff1a1600),
      primaryContainer: Color(0xff9e9241),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffd3cba6),
      onSecondary: Color(0xff1a1702),
      secondaryContainer: Color(0xff989170),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffabd4bb),
      onTertiary: Color(0xff001b0e),
      tertiaryContainer: Color(0xff729982),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff15130c),
      onSurface: Color(0xfffffaf3),
      onSurfaceVariant: Color(0xffd0cbb9),
      outline: Color(0xffa8a392),
      outlineVariant: Color(0xff878373),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe7e2d5),
      inversePrimary: Color(0xff514800),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      background: Color(0xffe7e2d5),
      onBackground: Color(0xff302a00),
      brightness: Brightness.dark,
      primary: Color(0xfffffaf3),
      surfaceTint: Color(0xffd6c871),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffdacc74),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffffaf3),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffd3cba6),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffeefff2),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xffabd4bb),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff15130c),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffffaf3),
      outline: Color(0xffd0cbb9),
      outlineVariant: Color(0xffd0cbb9),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe7e2d5),
      inversePrimary: Color(0xff302a00),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        textTheme: textTheme.apply(
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}

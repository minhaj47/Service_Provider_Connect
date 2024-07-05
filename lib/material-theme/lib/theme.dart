// ignore_for_file: use_full_hex_values_for_flutter_colors

import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278217069),
      surfaceTint: Color(4278217069),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4288475637),
      onPrimaryContainer: Color(4278198305),
      secondary: Color(4283065188),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4291619049),
      onSecondaryContainer: Color(4278460192),
      tertiary: Color(4283260796),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4292207615),
      onTertiaryContainer: Color(4278656054),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294245370),
      onSurface: Color(4279639325),
      onSurfaceVariant: Color(4282337609),
      outline: Color(4285495673),
      outlineVariant: Color(4290693321),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281020978),
      inversePrimary: Color(4286633176),
      primaryFixed: Color(4288475637),
      onPrimaryFixed: Color(4278198305),
      primaryFixedDim: Color(4286633176),
      onPrimaryFixedVariant: Color(4278210386),
      secondaryFixed: Color(4291619049),
      onSecondaryFixed: Color(4278460192),
      secondaryFixedDim: Color(4289842381),
      onSecondaryFixedVariant: Color(4281486156),
      tertiaryFixed: Color(4292207615),
      onTertiaryFixed: Color(4278656054),
      tertiaryFixedDim: Color(4290103273),
      onTertiaryFixedVariant: Color(4281747300),
      surfaceDim: Color(4292205531),
      surfaceBright: Color(4294245370),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293916149),
      surfaceContainer: Color.fromARGB(255, 255, 255, 255),
      surfaceContainerHigh: Color(4293126633),
      surfaceContainerHighest: Color(4292732131),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278209358),
      surfaceTint: Color(4278217069),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4280516740),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281222984),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4284512634),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281484127),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4284773780),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294245370),
      onSurface: Color(4279639325),
      onSurfaceVariant: Color(4282074437),
      outline: Color(4283916641),
      outlineVariant: Color(4285758845),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281020978),
      inversePrimary: Color(4286633176),
      primaryFixed: Color(4280516740),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278216554),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4284512634),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282867810),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4284773780),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4283129210),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292205531),
      surfaceBright: Color(4294245370),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293916149),
      surfaceContainer: Color(4293521391),
      surfaceContainerHigh: Color(4293126633),
      surfaceContainerHighest: Color(4292732131),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278200105),
      surfaceTint: Color(4278217069),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4278209358),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4278986279),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4281222984),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4279181885),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4281484127),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294245370),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280034854),
      outline: Color(4282074437),
      outlineVariant: Color(4282074437),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281020978),
      inversePrimary: Color(4289133310),
      primaryFixed: Color(4278209358),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278203189),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4281222984),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4279710002),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4281484127),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4279971144),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292205531),
      surfaceBright: Color(4294245370),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4293916149),
      surfaceContainer: Color(4293521391),
      surfaceContainerHigh: Color(4293126633),
      surfaceContainerHighest: Color(4292732131),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4286633176),
      surfaceTint: Color(4286633176),
      onPrimary: Color(4278204217),
      primaryContainer: Color(4278210386),
      onPrimaryContainer: Color(4288475637),
      secondary: Color(4289842381),
      onSecondary: Color(4279972918),
      secondaryContainer: Color(4281486156),
      onSecondaryContainer: Color(4291619049),
      tertiary: Color(4290103273),
      onTertiary: Color(4280234316),
      tertiaryContainer: Color(4281747300),
      onTertiaryContainer: Color(4292207615),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279112725),
      onSurface: Color(4292732131),
      onSurfaceVariant: Color(4290693321),
      outline: Color(4287206291),
      outlineVariant: Color(4282337609),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292732131),
      inversePrimary: Color(4278217069),
      primaryFixed: Color(4288475637),
      onPrimaryFixed: Color(4278198305),
      primaryFixedDim: Color(4286633176),
      onPrimaryFixedVariant: Color(4278210386),
      secondaryFixed: Color(4291619049),
      onSecondaryFixed: Color(4278460192),
      secondaryFixedDim: Color(4289842381),
      onSecondaryFixedVariant: Color(4281486156),
      tertiaryFixed: Color(4292207615),
      onTertiaryFixed: Color(4278656054),
      tertiaryFixedDim: Color(4290103273),
      onTertiaryFixedVariant: Color(4281747300),
      surfaceDim: Color(4279112725),
      surfaceBright: Color(4281612859),
      surfaceContainerLowest: Color(4278783760),
      surfaceContainerLow: Color(4279639325),
      surfaceContainer: Color(4279902497),
      surfaceContainerHigh: Color(4280625963),
      surfaceContainerHighest: Color(4281349686),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4286896348),
      surfaceTint: Color(4286633176),
      onPrimary: Color(4278196763),
      primaryContainer: Color(4282883489),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4290105553),
      onSecondary: Color(4278196763),
      secondaryContainer: Color(4286289559),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4290366446),
      onTertiary: Color(4278326832),
      tertiaryContainer: Color(4286615985),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279112725),
      onSurface: Color(4294376700),
      onSurfaceVariant: Color(4291022285),
      outline: Color(4288390565),
      outlineVariant: Color(4286285189),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292732131),
      inversePrimary: Color(4278210900),
      primaryFixed: Color(4288475637),
      onPrimaryFixed: Color(4278195221),
      primaryFixedDim: Color(4286633176),
      onPrimaryFixedVariant: Color(4278205759),
      secondaryFixed: Color(4291619049),
      onSecondaryFixed: Color(4278195221),
      secondaryFixedDim: Color(4289842381),
      onSecondaryFixedVariant: Color(4280367675),
      tertiaryFixed: Color(4292207615),
      onTertiaryFixed: Color(4278194473),
      tertiaryFixedDim: Color(4290103273),
      onTertiaryFixedVariant: Color(4280629074),
      surfaceDim: Color(4279112725),
      surfaceBright: Color(4281612859),
      surfaceContainerLowest: Color(4278783760),
      surfaceContainerLow: Color(4279639325),
      surfaceContainer: Color(4279902497),
      surfaceContainerHigh: Color(4280625963),
      surfaceContainerHighest: Color(4281349686),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4293656575),
      surfaceTint: Color(4286633176),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4286896348),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4293656575),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4290105553),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294703871),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4290366446),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279112725),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294180349),
      outline: Color(4291022285),
      outlineVariant: Color(4291022285),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292732131),
      inversePrimary: Color(4278202418),
      primaryFixed: Color(4288804345),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4286896348),
      onPrimaryFixedVariant: Color(4278196763),
      secondaryFixed: Color(4291882221),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4290105553),
      onSecondaryFixedVariant: Color(4278196763),
      tertiaryFixed: Color(4292667391),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4290366446),
      onTertiaryFixedVariant: Color(4278326832),
      surfaceDim: Color(4279112725),
      surfaceBright: Color(4281612859),
      surfaceContainerLowest: Color(4278783760),
      surfaceContainerLow: Color(4279639325),
      surfaceContainer: Color(4279902497),
      surfaceContainerHigh: Color(4280625963),
      surfaceContainerHighest: Color(4281349686),
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

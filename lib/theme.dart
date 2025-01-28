import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4287581240),
      surfaceTint: Color(4287581240),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4294958033),
      onPrimaryContainer: Color(4281993985),
      secondary: Color(4286011214),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294958033),
      onSecondaryContainer: Color(4281079055),
      tertiary: Color(4285291823),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294304167),
      onTertiaryContainer: Color(4280490752),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294965494),
      onSurface: Color(4280490263),
      onSurfaceVariant: Color(4283646783),
      outline: Color(4286935918),
      outlineVariant: Color(4292395708),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281937451),
      inversePrimary: Color(4294948256), background: Color(4294948256), onBackground: Color(4294948256),
      
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return  const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4285346079),
      surfaceTint: Color(4287581240),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4289356108),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4284038196),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4287589731),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4283318806),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4286805058),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965494),
      onSurface: Color(4280490263),
      onSurfaceVariant: Color(4283383611),
      outline: Color(4285291351),
      outlineVariant: Color(4287199090),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281937451),
      inversePrimary: Color(4294948256),
      background: Color(4294948256), onBackground: Color(4294948256),
      
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4282585348),
      surfaceTint: Color(4287581240),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4285346079),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281605141),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4284038196),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281016576),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4283318806),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294965494),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4281213213),
      outline: Color(4283383611),
      outlineVariant: Color(4283383611),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281937451),
      inversePrimary: Color(4294961121),
      background: Color(4294948256), onBackground: Color(4294948256),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return  const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294948256),
      surfaceTint: Color(4294948256),
      onPrimary: Color(4283834127),
      primaryContainer: Color(4285674787),
      onPrimaryContainer: Color(4294958033),
      secondary: Color(4293377458),
      onSecondary: Color(4282657314),
      secondaryContainer: Color(4284301367),
      onSecondaryContainer: Color(4294958033),
      tertiary: Color(4292396429),
      onTertiary: Color(4282068741),
      tertiaryContainer: Color(4283647513),
      onTertiaryContainer: Color(4294304167),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279898383),
      onSurface: Color(4294041562),
      onSurfaceVariant: Color(4292395708),
      outline: Color(4288711815),
      outlineVariant: Color(4283646783),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4294041562),
      inversePrimary: Color.fromARGB(255, 159, 101, 83),
      background: Color.fromARGB(255, 75, 59, 55), onBackground: Color(4294948256),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return  const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294949799),
      surfaceTint: Color(4294948256),
      onPrimary: Color(4281403136),
      primaryContainer: Color(4291525733),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4293706166),
      onSecondary: Color(4280684554),
      secondaryContainer: Color(4289628286),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4292725393),
      onTertiary: Color(4280096256),
      tertiaryContainer: Color(4288712796),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279898383),
      onSurface: Color(4294965752),
      onSurfaceVariant: Color(4292658880),
      outline: Color(4289961625),
      outlineVariant: Color(4287790970),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4294041562),
      inversePrimary: Color(4285806116),
      background: Color(4294948256), onBackground: Color(4294948256),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294965752),
      surfaceTint: Color(4294948256),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4294949799),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294965752),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4293706166),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294966006),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4292725393),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279898383),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294965752),
      outline: Color(4292658880),
      outlineVariant: Color(4292658880),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4294041562),
      inversePrimary: Color(4283242761),
      background: Color(4294948256), onBackground: Color(4294948256),
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


  List<ExtendedColor> get extendedColors => [
  ];
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

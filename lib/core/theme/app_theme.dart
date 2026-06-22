import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  // Brand colors from PWA
  static const Color orange = Color(0xFFEA580C); // orange-600
  static const Color blue = Color(0xFF526ED3); // accent-1
  static const Color navy = Color(0xFF1B1F3B); // text primary
  static const Color green = Color(0xFF4AC99B); // positive
  static const Color red = Color(0xFFFF291A); // negative
  static const Color yellow = Color(0xFFFFC700); // warning

  static ThemeData get light => ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.light(
      primary: orange,
      onPrimary: Colors.white,
      primaryContainer: Color(0xFFFFEDD5),
      onPrimaryContainer: Color(0xFF7C2D00),
      secondary: blue,
      onSecondary: Colors.white,
      secondaryContainer: Color(0xFFDDE4FF),
      onSecondaryContainer: Color(0xFF001B3E),
      surface: Colors.white,
      onSurface: navy,
      surfaceContainerHighest: Color(0xFFF6F6F6),
      onSurfaceVariant: Color(0x661B1F3B),
      error: red,
      onError: Colors.white,
      errorContainer: Color(0xFFFFDAD6),
      outline: Color(0x1A000000),
      outlineVariant: Color(0x29000000),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: navy,
      elevation: 0,
      centerTitle: true,
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: Colors.white,
      indicatorColor: orange.withValues(alpha: 0.12),
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: orange);
        }
        return TextStyle(fontSize: 12, color: navy.withValues(alpha: 0.65));
      }),
      iconTheme: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return const IconThemeData(color: orange, size: 24);
        }
        return IconThemeData(color: navy.withValues(alpha: 0.65), size: 24);
      }),
    ),
  );

  static ThemeData get dark => ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFFFF9A6C),
      onPrimary: Color(0xFF4A1500),
      primaryContainer: Color(0xFF7C2D00),
      onPrimaryContainer: Color(0xFFFFEDD5),
      secondary: Color(0xFF6788FF),
      onSecondary: Color(0xFF002F6E),
      secondaryContainer: Color(0xFF1A41A2),
      onSecondaryContainer: Color(0xFFDDE4FF),
      surface: Color(0xFF222222),
      onSurface: Colors.white,
      surfaceContainerHighest: Color(0xFF333333),
      onSurfaceVariant: Color(0xB8FFFFFF),
      error: Color(0xFFFF5447),
      onError: Color(0xFF690005),
      errorContainer: Color(0xFF93000A),
      outline: Color(0x24FFFFFF),
      outlineVariant: Color(0x99FFFFFF),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF222222),
      foregroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
    ),
    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: const Color(0xFF222222),
      indicatorColor: const Color(0xFFFF9A6C).withValues(alpha: 0.20),
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: Color(0xFFFF9A6C),
          );
        }
        return const TextStyle(fontSize: 12, color: Color(0xB8FFFFFF));
      }),
      iconTheme: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return const IconThemeData(color: Color(0xFFFF9A6C), size: 24);
        }
        return const IconThemeData(color: Color(0xB8FFFFFF), size: 24);
      }),
    ),
  );
}

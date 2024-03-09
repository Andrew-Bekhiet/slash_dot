import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:slash_dot/slash_dot.dart';

ProviderContainer? _globalProviderContainer;

ProviderContainer get globalProviderContainer =>
    _globalProviderContainer ??= ProviderContainer();

@visibleForTesting
set globalProviderContainer(ProviderContainer container) {
  _globalProviderContainer = container;
}

void main() {
  runApp(
    ProviderScope(
      parent: globalProviderContainer,
      child: const SlashDotApp(),
    ),
  );
}

class SlashDotApp extends StatelessWidget {
  static ThemeData getDefaultDarkTheme() {
    final themeData = ThemeData.from(
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xffb8ee2e),
        brightness: Brightness.dark,
      ),
      useMaterial3: true,
    );

    return themeData.copyWith(
      appBarTheme: themeData.appBarTheme.copyWith(centerTitle: true),
    );
  }

  const SlashDotApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: getDefaultDarkTheme(),
      themeMode: ThemeMode.dark,
      routes: NavigationService.instance.routes,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spaceflight_app/screens/splesh_screen.dart';

import 'provider/theme_changer_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeChanger()),
        ChangeNotifierProvider(create: (_) => ColorChanger()),
      ],
      child: Builder(builder: (BuildContext context) {
        final themeChanger = Provider.of<ThemeChanger>(context);
        final colorChanger = Provider.of<ColorChanger>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          themeMode: themeChanger.themeMode,
          theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: colorChanger.color,
          ),
          darkTheme: ThemeData(brightness: Brightness.dark),
          home: const SpleshScreen(),
        );
      }),
    );
  }
}

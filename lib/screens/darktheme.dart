import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spaceflight_app/provider/theme_changer_provider.dart';



class DarkThemeScreen extends StatefulWidget {
  const DarkThemeScreen({Key? key}) : super(key: key);

  @override
  State<DarkThemeScreen> createState() => _DarkThemeScreenState();
}

class _DarkThemeScreenState extends State<DarkThemeScreen> {
  @override
  Widget build(BuildContext context) {
    final themeChanger = Provider.of<ThemeChanger>(context);
    final colorChanger = Provider.of<ColorChanger>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Theme"),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            RadioListTile<ThemeMode>(
                title: const Text('Light Mode'),
                value: ThemeMode.light,
                groupValue: themeChanger.themeMode,
                onChanged: themeChanger.setTheme),
            RadioListTile<ThemeMode>(
                title: const Text('Dark Mode'),
                value: ThemeMode.dark,
                groupValue: themeChanger.themeMode,
                onChanged: themeChanger.setTheme),
            RadioListTile<ThemeMode>(
                title: const Text('System Mode'),
                value: ThemeMode.system,
                groupValue: themeChanger.themeMode,
                onChanged: themeChanger.setTheme),
            ElevatedButton(
              onPressed: () {
                colorChanger.setColor(Colors.red);
              },
              child: Text("Red"),
            ),
            ElevatedButton(
              onPressed: () {
                colorChanger.setColor(Colors.yellow);
              },
              child: Text("yellow"),
            ),
            ElevatedButton(
              onPressed: () {
                colorChanger.setColor(Colors.orange);
              },
              child: Text("orange"),
            ),
            ElevatedButton(
              onPressed: () {
                colorChanger.setColor(Colors.pink);
              },
              child: Text("pink"),
            ),
            ElevatedButton(
              onPressed: () {
                colorChanger.setColor(Colors.green);
              },
              child: Text("green"),
            ),
            ElevatedButton(
              onPressed: () {
                colorChanger.setColor(Colors.blue);
              },
              child: Text("blue"),
            ),
            ElevatedButton(
              onPressed: () {
                colorChanger.setColor(Colors.grey);
              },
              child: Text("grey"),
            ),
          ],
        ),
      ),
    );
  }
}

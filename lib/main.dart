import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:settings_screen/screens/settings_screen.dart';
import 'package:settings_screen/provider/theme_provider.dart';

Future main() async{
  runApp(const MyApp());
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.top],
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Settings",
      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme,
      darkTheme: MyThemes.darkTheme,
      home: const SettingsScreen(),
    );
  }
}

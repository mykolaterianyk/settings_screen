import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:settings_screen/screens/settings_screen.dart';
import 'package:settings_screen/provider/theme_provider.dart';
import 'l10n/l10n.dart';

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
  Widget build(BuildContext context) => ChangeNotifierProvider(

    create: (context) => ThemeProvider(),
    builder: (context, _){
      final themeProvider = Provider.of<ThemeProvider>(context);
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Settings",
        themeMode: themeProvider.themeMode,
        theme: MyThemes.lightTheme,
        darkTheme: MyThemes.darkTheme,
        supportedLocales: L10n.all,
        home: const SettingsScreen(),

      );
    }
  );
}



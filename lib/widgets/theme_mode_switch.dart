import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:settings_screen/provider/theme_provider.dart';

class ThemeModeSwitch extends StatelessWidget {
  const ThemeModeSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
      return  CupertinoSwitch(
     activeColor: const Color.fromARGB(255, 45,155,240),
     value: themeProvider.isDarkMode,
     onChanged: (value){
       final provider = Provider.of<ThemeProvider>(context,listen: false);
       provider.toggleTheme(value);
     },
   );
  }
}

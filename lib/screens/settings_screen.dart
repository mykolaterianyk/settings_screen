import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
           const Text(
              "Settings",
              style: TextStyle(
              fontFamily: 'Spoof',
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
            ),
            const SizedBox(height: 40,),
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black,
                  ),
                  child: const Icon(
                    Ionicons.moon_outline,
                    color: Colors.white,),
                ),
                const SizedBox(width: 10),
                Text("Dark mode",
                style: TextStyle(
                  fontFamily: 'Spoof',
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
                ),
                const SizedBox(width: 10),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(1, 12, 167, 137),
                    borderRadius: BorderRadius.circular(15),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ),
    );
  }
}

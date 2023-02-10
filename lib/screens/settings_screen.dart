import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:settings_screen/widgets/settings_tile.dart';

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
          children: const [
           Text(
              "Settings",
              style: TextStyle(
              fontFamily: 'Spoof',
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(height: 40,),
            SettingsTile(
                color: Colors.black,
                icon: Ionicons.moon,
                title: 'Dark mode',
                iconColor: Colors.white,
            ),
            SizedBox(height: 10,),
            Text("Profile",
              style: TextStyle(
              fontFamily: 'Spoof',
                fontSize: 18,
                color: Color.fromARGB(255, 128, 128, 128)
            ),),
            SizedBox(height: 10,),
            SettingsTile(
                color: Color.fromARGB(100, 12, 167, 137),
                icon: Ionicons.pencil,
                title: 'Edit Profile',
                iconColor: Colors.black,
            ),
            SizedBox(height: 10,),
            SettingsTile(
                color: Color.fromARGB(100, 45, 155, 240),
                icon: Ionicons.lock_closed,
                title: 'Change Password',
                iconColor: Colors.black,
            ),
            SizedBox(height: 10,),
            Text("Notifications",
              style: TextStyle(
                  fontFamily: 'Spoof',
                  fontSize: 18,
                  color: Color.fromARGB(255, 128, 128, 128)
              ),),
            SizedBox(height: 10,),
            SettingsTile(
                color: Color.fromARGB(100, 95, 99, 251),
                icon: Ionicons.notifications,
                title: 'Notifications',
                iconColor: Colors.black ,
            ),
            SizedBox(height: 10,),
            Text("Regional",
              style: TextStyle(
                  fontFamily: 'Spoof',
                  fontSize: 18,
                  color: Color.fromARGB(255, 128, 128, 128)
              ),),
            SizedBox(height: 10,),
            SettingsTile(
                color: Color.fromARGB(100, 250, 199, 16),
                icon: Ionicons.language,
                title: 'Language',
                iconColor: Colors.black,
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    ),
    );
  }
}

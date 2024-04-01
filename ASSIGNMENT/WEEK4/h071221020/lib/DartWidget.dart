
import 'package:flutter/material.dart';
import 'package:h071221020/ProfilePage.dart';
import 'package:h071221020/SettingsPage.dart';
import 'package:h071221020/HomePage.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
              padding: EdgeInsets.all(10),
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              alignment: Alignment.bottomLeft,
              width: double.infinity,
              height: 150,
              child: Text('Kelvin Leonardo Sianipar', style: TextStyle(fontSize: 20),)),
          ListTile(
            title: Text('Home'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => const HomePage()
                )
              );
            },
          ),
          ListTile(
            title: Text('Profile'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => const ProfilePage()
                )
              );
            },
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) => const SettingsPage()
                )
              );
            },
          ),
        ],
      ),
    );
  }
}

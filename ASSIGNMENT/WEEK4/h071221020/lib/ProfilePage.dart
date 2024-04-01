
import 'package:flutter/material.dart';

import 'DartWidget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Text('Profile Page')),
      drawer: DrawerWidget(),
    );
  }
}

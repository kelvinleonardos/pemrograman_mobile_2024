import 'package:flutter/material.dart';
import 'package:h071221020/const.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pengaturan"
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: Text(
              "Tentang Aplikasi",
              style: TextStyle(
                fontSize: 14
              ),
            ),
          ),
          ListTile(
            title: Text(
              "Versi Aplikasi",
              style: TextStyle(
                fontSize: 12
              ),
            ),
            subtitle: Text(
              "v1.0.0",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Divider(
            indent: 10,
            endIndent: 10,
          ),
          ListTile(
            title: Text(
              "Zona Waktu Aplikasi",
              style: TextStyle(
                  fontSize: 12
              ),
            ),
            subtitle: Text(
              Const.getTimeZoneName(),
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Divider(
            indent: 10,
            endIndent: 10,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 5),
            child: TextButton(
              onPressed: () {
                _launchRepo();
              },
              child: Text("Lihat Repositori Apikasi"),
            ),
          ),
        ],
      )
    );
  }
}

_launchRepo() async {
  const repUrl = "https://github.com/kelvinleonardos/pemrograman_mobile_2024/tree/main/ASSIGNMENT/WEEK2/h071221020";
  await launchUrl(Uri.parse(repUrl));
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:h071221020/const.dart';
import 'package:h071221020/pages/settingspage.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Selamat ${Const.getDayTime()}",
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 15),
              child: InkWell(
                child: Icon(Icons.settings),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return SettingsPage();
                      },
                    )
                  );
                },
              ),
            )
          ],
          bottom: const TabBar(
            tabs: [
              Text("Sekilas"),
              Text("Detail")
            ],
            labelPadding: EdgeInsets.all(15),
            indicatorSize: TabBarIndicatorSize.tab,
          ),
        ),
        body: TabBarView(
          children: [
            SekilasTab(),
            DetailTab()
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
            _launchWA();
          },
          label: Text("Kerim Pesan"),
          icon: IconButton(
            icon: SvgPicture.asset(
              "resources/images/logo-whatsapp.svg",
              height: 35,
            ), onPressed: () {},
          ),
        ),
      ),
    );
  }
}

class DetailTab extends StatelessWidget {
  const DetailTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.person),
          ),
          title: Text(
            "Nama",
            style: TextStyle(
              fontSize: 15
            ),
          ),
          subtitle: Text(
            "Kelvin Leonardo Sianipar",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.calendar_month),
          ),
          title: Text(
            "Tempat, Tanggal Lahir",
            style: TextStyle(
                fontSize: 15
            ),
          ),
          subtitle: Text(
            "Makassar, 22 Agustus 2022",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.school),
          ),
          title: Text(
            "Sekolah / Universitas",
            style: TextStyle(
                fontSize: 15
            ),
          ),
          subtitle: Text(
            "Universitas Hasanuddin",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.class_),
          ),
          title: Text(
            "Program Studi",
            style: TextStyle(
                fontSize: 15
            ),
          ),
          subtitle: Text(
            "Sistem Informasi",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.home),
          ),
          title: Text(
            "Alamat Tempat Tinggal",
            style: TextStyle(
                fontSize: 15
            ),
          ),
          subtitle: Text(
            "Dekat Unhas",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.fastfood),
          ),
          title: Text(
            "Makanan Kesukaan",
            style: TextStyle(
                fontSize: 15
            ),
          ),
          subtitle: Text(
            "Nasi Goreng",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.my_library_music),
          ),
          title: Text(
            "Hobi",
            style: TextStyle(
                fontSize: 15
            ),
          ),
          subtitle: Text(
            "Mendengarkan musik",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.route),
          ),
          title: Text(
            "Cita-Cita",
            style: TextStyle(
                fontSize: 15
            ),
          ),
          subtitle: Text(
            "Membahagiakan orang tua",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            child: Icon(Icons.air),
          ),
          title: Text(
            "Moto",
            style: TextStyle(
                fontSize: 15
            ),
          ),
          subtitle: Text(
            "\"Tiada hari tanpa bernapas\"",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 5),
              child: Text("Media Sosial"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(5),
                  child: IconButton(
                    icon: SvgPicture.asset(
                      "resources/images/logo-instagram.svg",
                      height: 35,
                    ),
                    onPressed: () {
                      _launchInstagram();
                    },
                  )
                ),
                Padding(
                    padding: EdgeInsets.all(5),
                    child: IconButton(
                      icon: SvgPicture.asset(
                        "resources/images/logo-linkedin.svg",
                        height: 35,
                      ),
                      onPressed: () {
                        _launchLinkedin();
                      },
                    )
                ),
                Padding(
                    padding: EdgeInsets.all(5),
                    child: IconButton(
                      icon: SvgPicture.asset(
                        "resources/images/logo-github.svg",
                        height: 35,
                      ),
                      onPressed: () {
                        _launchGithub();
                      },
                    )
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(15))
          ],
        )
      ],
    );
  }
}

class SekilasTab extends StatelessWidget {
  const SekilasTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(MediaQuery.of(context).size.width * 0.1 ),
          child: Image.asset(
            "resources/images/profile.jpg",
            width: MediaQuery.of(context).size.width * 0.7,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Kelvin Leonardo Sianipar",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text("Mahasiswa semester 4 pada program studi Sistem Informasi di Universitas Hasanuddin.")
            ],
          ),
        )
      ],
    );
  }
}

_launchInstagram() async {
  const igUrl = "https://www.instagram.com/kelvinleonardos/";
  await launchUrl(Uri.parse(igUrl));
}

_launchLinkedin() async {
  const linUrl = "https://id.linkedin.com/in/kelvinleonardos";
  await launchUrl(Uri.parse(linUrl));
}

_launchGithub() async {
  const gitUrl = "https://github.com/kelvinleonardos";
  await launchUrl(Uri.parse(gitUrl));
}

_launchWA() async {
  String message = Uri.encodeFull("Halo, Kelvin. ");
  String waUrl = "whatsapp://send?phone=62895396186767&text=$message";
  await launchUrl(Uri.parse(waUrl));
}

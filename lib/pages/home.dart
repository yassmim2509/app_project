import 'package:flutter/material.dart';
import 'package:app_streaming/pages/videoscreen.dart';
import 'package:app_streaming/pages/pesquisa.dart';
import 'package:app_streaming/pages/style.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});

  final List<Map<String, String>> playlists = [
    {'image': 'assets/images/furia(album).jpg', 'name': 'Fúria'},
    {'image': 'assets/images/musicascurtidas.png', 'name': 'Músicas curtidas'},
    {'image': 'assets/images/flomili.jpg', 'name': 'Flo Mili'},
    {'image': 'assets/images/aju(ep).png', 'name': 'AJU'},
    {'image': 'assets/images/caju(album).jpg', 'name': 'Caju'},
    {'image': 'assets/images/vistagrossa(album).jpg', 'name': 'Vista Grossa'},
  ];

  final List<Map<String, String>> artistas = [
    {'image': 'assets/images/flomili.jpg', 'name': 'FLO MILI'},
    {'image': 'assets/images/urias.jpeg', 'name': 'URIAS'},
    {'image': 'assets/images/slipmami.jpg', 'name': 'SLIPMANI'},
    {'image': 'assets/images/ajuliacosta.jpg', 'name': 'AJULIACOSTA'},
    {'image': 'assets/images/liniker.jpeg', 'name': 'LINIKER'},
    {'image': 'assets/images/monnabrutal.jpeg', 'name': 'MONNA BRUTAL'},
  ];

  final List<Map<String, String>> descubra = [
    {'image': 'assets/images/anitta.webp', 'name': 'ANITTA'},
    {'image': 'assets/images/ludmilla.webp', 'name': 'LUDMILLA'},
    {'image': 'assets/images/slayyyter.png', 'name': 'SLAYYYTER'},
    {'image': 'assets/images/pabllovittar.jpg', 'name': 'PABLLO VITTAR'},
    {'image': 'assets/images/gloriagroover.webp', 'name': 'GLORIA GROOVER'},
    {'image': 'assets/images/mcsoffia.png', 'name': 'MC SOFFIA'},
  ];

  void _launchVideo(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => VideoScreen(
          videoUrl: 'https://youtu.be/-H4UKen_ErE?si=EW3Z3OE6pjw78wqX',
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [MinhaCor.PrimariaBase, Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Conteúdo...
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Início",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Pesquisa",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: "Biblioteca",
          ),
        ],
        selectedItemColor: MinhaCor.PrimariaBase,
        unselectedItemColor: Colors.white,
        currentIndex: 0,
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Pesquisa()),
            );
          }
        },
      ),
    );
  }
}

import 'package:app_streaming/pages/biblioteca.dart';
import 'package:app_streaming/pages/home.dart';
import 'package:app_streaming/pages/pesquisa.dart';
import 'package:app_streaming/pages/style.dart';
import 'package:app_streaming/pages/videoscreen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import para abrir links no navegador.
import 'package:app_streaming/pages/perfil_soffia.dart';
import 'package:app_streaming/pages/perfil_flomili.dart';
import 'package:app_streaming/pages/perfil_urias.dart';
import 'package:app_streaming/pages/perfil_ajulia.dart';
import 'package:app_streaming/pages/perfil_ludmilla.dart';
import 'package:app_streaming/pages/perfil_slayyter.dart';
import 'package:app_streaming/pages/perfil_liniker.dart';
import 'package:app_streaming/pages/perfil_monna.dart';
import 'package:app_streaming/pages/perfil_pabllo.dart';
import 'package:app_streaming/pages/perfil_gloria.dart';
import 'package:app_streaming/pages/perfil_soffia.dart';



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
    {'image': 'assets/images/slipmami.jpg', 'name': 'SLIPMAMI'},
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

  final Map<String, String> routes = {
    'FLO MILI': '/perfil_flomili',
    'Flo Mili': '/perfil_flomili',
    'URIAS': '/perfil_urias',
    'SLIPMAMI': '/perfil_slay',
    'AJULIACOSTA': '/perfil_aju',
    'LINIKER': '/perfil_lin',
    'MONNA BRUTAL': '/perfil_mob',
    'ANITTA': '/perfil_anitta',
    'LUDMILLA': '/perfil_ludmilla',
    'SLAYYYTER': '/perfil_slay',
    'PABLLO VITTAR': '/perfil_vittar',
    'GLORIA GROOVER': '/perfil_groove',
    'MC SOFFIA': '/perfil_soffia',
  };

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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  height: 250,
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      childAspectRatio: 3,
                    ),
                    itemCount: playlists.length,
                    itemBuilder: (context, index) {
                      final playlist = playlists[index];
                      return Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 41, 41, 41),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(3),
                              child: Image.asset(
                                playlist['image']!,
                                width: 60,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: Text(
                                playlist['name']!,
                                style: const TextStyle(
                                  fontFamily: 'Lexend',
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _launchVideo(context),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  child: Stack(
                    children: [
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/tantofazclipe.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.7),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text(
                                "CLIPE DA SEMANA",
                                style: TextStyle(
                                  fontFamily: 'Lexend',
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "TANTO FAZ - URIAS",
                                style: TextStyle(
                                  fontFamily: 'Lexend',
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'SEUS ARTISTAS ESTÃO COM SAUDADE',
                    style: const TextStyle(
                      fontFamily: 'Lexend',
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // Seção de artistas
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: artistas.length,
                    itemBuilder: (context, index) {
                      final artista = artistas[index];
                      return Container(
                        width: 120,
                        margin: const EdgeInsets.only(right: 7),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                artista['image']!,
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              artista['name']!,
                              style: const TextStyle(
                                fontFamily: 'Lexend',
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                              ),
                              softWrap: false,
                              overflow: TextOverflow.fade,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // Descubra em 2024
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                  'DESCUBRA EM 2024',
                  style: const TextStyle(
                    fontFamily: 'Lexend',
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: descubra.length,
                    itemBuilder: (context, index) {
                      final veja = descubra[index];
                      return Container(
                        width: 120,
                        margin: const EdgeInsets.only(right: 7),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                veja['image']!,
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              veja['name']!,
                              style: const TextStyle(
                                fontFamily: 'Lexend',
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 12,
                              ),
                              softWrap: false,
                              overflow: TextOverflow.fade,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
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
        selectedItemColor: const Color.fromRGBO(145, 13, 101, 1),
        unselectedItemColor: Colors.white,
        currentIndex: 0,
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Pesquisa()),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Biblioteca()),
            );
          }
        },
      ),
    );
  }
}

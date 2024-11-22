import 'package:app_streaming/pages/style.dart';
import 'package:app_streaming/shared/style.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Pesquisa());
}

class Pesquisa extends StatelessWidget {
  const Pesquisa({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const SearchScreen(),
    );
  }
}

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              MyColors.PrimariaBase,
              Colors.black,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 60),

                // Campo de Pesquisa
                _buildSearchField(),

                const SizedBox(height: 32),

                // Seção Brasileiras
                _buildSection('BRASILEIRAS', [
                  _buildCard('FÚRIA - URIAS', 'assets/images/furia(album).jpg', Icons.music_note),
                  _buildCard('CAJU - LINIKER', 'assets/images/caju(album).jpg', Icons.music_note),
                  _buildCard('MENINA MÁ - ANITTA', 'assets/images/meninama.jpg', Icons.music_note),
                  _buildCard('LOUCA DE SAUDADE - JORGE E MATEUS', 'assets/images/loucadesaudade.jpg', Icons.music_note),
                ]),

                const SizedBox(height: 24),

                // Seção Podcasts
                _buildSection('PODCASTS', [
                  _buildCard('PEEWEECAST', 'assets/images/peweecast.jpg', Icons.headphones),
                  _buildCard('CAFÉ COM CRIME', 'assets/images/cafecomcrime.jpg', Icons.headphones),
                  _buildCard('INTELIGÊNCIA LIMITADA', 'assets/images/ltda.jpg', Icons.headphones),
                  _buildCard('PODPAH', 'assets/images/podpah.jpg', Icons.headphones),
                ]),

                const SizedBox(height: 24),

                // Seção Lançamentos
                _buildSection('LANÇAMENTOS', [
                  _buildCard('AJU - AJULIACOSTA', 'assets/images/aju(ep).png', Icons.music_note),
                  _buildCard('BELLAKEO - ANITTA FEAT. PESO PLUMA', 'assets/images/bellakeo.jpg', Icons.music_note),
                  _buildCard('NOSSO PRIMIEOR BEIJO - GLORIA GROOVE', 'assets/images/primeirobeijo.jpg', Icons.music_note),
                  _buildCard('MAGNATA - URIAS', 'assets/images/magnata.jpg', Icons.music_note),
                ]),
              ],
            ),
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
        selectedItemColor: MyColors.PrimariaBase,
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

  // Função para o campo de pesquisa
  Widget _buildSearchField() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          // Imagem de perfil circular
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage('assets/images/perfil.png'),
            ),
          ),
          // Campo de texto
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'O que você quer ouvir?',
                hintStyle: const TextStyle(color: Colors.black38),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(vertical: 13),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Função para construir título da seção
  Widget _buildSection(String title, List<Widget> cards) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle(title),
        _buildHorizontalList(cards),
      ],
    );
  }

  // Função para construir o título da seção
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'Lexend',
          letterSpacing: 1.0,
        ),
      ),
    );
  }

  // Função para construir lista horizontal de cards
  Widget _buildHorizontalList(List<Widget> cards) {
    return SizedBox(
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: cards,
      ),
    );
  }

  // Função para criar cada card de álbum
  Widget _buildCard(String title, String imageUrl, IconData icon) {
    return Container(
      margin: const EdgeInsets.only(right: 16.0),
      width: 160,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.7),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Container(
              width: 110,
              height: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Colors.white70,
                  size: 16,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'LexendGiga',
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

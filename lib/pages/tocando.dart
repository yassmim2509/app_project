import 'package:flutter/material.dart';

class Tocando extends StatefulWidget {
  const Tocando({super.key});

  @override
  State<Tocando> createState() => _TocandoState();
}

class _TocandoState extends State<Tocando> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0), // Cor de fundo preta
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(12.0),
        margin: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 0, 0, 0),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              const SizedBox(height: 40),
              _buildAlbumCover(),
              const SizedBox(height: 5),
              _buildSongInfo(),
              const SizedBox(height: 10),
              _buildLine(),
              const SizedBox(height: 20),
              _buildPlayButton(),
              const SizedBox(height: 20),
              _buildFooter(),
              const SizedBox(height: 20),
              _buildLyricsButton(),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

  // Cabeçalho com "OUVINDO DE: HOME"
  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildNavigationIcon("assets/setadescer.png", '/perfil_slipmami'),
          const SizedBox(width: 5),
          _buildText("OUVINDO DE :", 15, FontWeight.bold),
          const SizedBox(width: 5),
          _buildText("HOME", 15, FontWeight.bold),
        ],
      ),
    );
  }

  // Função para exibir imagem de navegação
  Widget _buildNavigationIcon(String assetPath, String routeName) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      child: Image.asset(
        assetPath,
        width: 50,
        height: 50,
      ),
    );
  }

  // Função para exibir texto com estilo
  Widget _buildText(String text, double fontSize, FontWeight fontWeight) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: const Color.fromARGB(255, 255, 252, 252),
      ),
    );
  }

  // Função para exibir a capa do álbum
  Widget _buildAlbumCover() {
    return Center(
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/perfil_slipmami');
        },
        child: Image.asset("assets/capamusica.png"),
      ),
    );
  }

  // Função para exibir as informações da música
  Widget _buildSongInfo() {
    return Column(
      children: [
        _buildText("Racha", 30, FontWeight.bold),
        _buildText("Urias", 20, FontWeight.normal),
      ],
    );
  }

  // Linha de separação
  Widget _buildLine() {
    return Center(
      child: GestureDetector(
        onTap: () {},
        child: Image.asset("assets/linha.png"),
      ),
    );
  }

  // Botão de Play
  Widget _buildPlayButton() {
    return Center(
      child: GestureDetector(
        onTap: () {},
        child: Image.asset("assets/play.png"),
      ),
    );
  }

  // Rodapé com setas, título e compartilhar
  Widget _buildFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildNavigationIcon("assets/setas.png", '/perfil_slipmami'),
        _buildText("ÁLBUM : FÚRIA", 20, FontWeight.bold),
        _buildNavigationIcon("assets/compartilhar.png", '/perfil_slipmami'),
      ],
    );
  }

  // Botão para letras da música
  Widget _buildLyricsButton() {
    return Center(
      child: GestureDetector(
        onTap: () {},
        child: Image.asset("assets/letra.png"),
      ),
    );
  }
}

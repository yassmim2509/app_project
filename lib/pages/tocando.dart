import 'package:flutter/material.dart';

class Tocando extends StatefulWidget {
  const Tocando({super.key});

  @override
  State<Tocando> createState() => _TocandoState();
}

class _TocandoState extends State<Tocando> {
  final _formKey = GlobalKey<FormState>();
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0), // Cor de fundo preta
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(12.0), // Margem interna ao redor do container principal
        margin: const EdgeInsets.all(12), // Margem externa ao redor do container principal
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 0, 0, 0), // Cor sólida de fundo (preta)
        ),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20), // Controle da distância do topo
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start, // Alinha ambos ao lado esquerdo
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/perfil_slipmami');
                        },
                        child: Image.asset(
                          "assets/setadescer.png",
                          width: 50, // Largura da imagem
                          height: 50, // Altura da imagem
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        "OUVINDO DE :",
                        style: TextStyle(
                          fontSize: 15, // Tamanho do texto
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 252, 252), // Cor do texto
                        ),
                      ),
                      const SizedBox(width: 5),
                      const Text(
                        "HOME",
                        style: TextStyle(
                          fontSize: 15, // Tamanho do texto
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 252, 252), // Cor do texto
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40), // Espaço controlado entre o topo e o próximo widget
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/perfil_slipmami');
                    },
                    child: Image.asset(
                      "assets/capamusica.png"
                    ),
                  ),
                ),
                const SizedBox(height: 5), // Espaço controlado entre o topo e o próximo widget
                const Text(
                  "Racha",
                  style: TextStyle(
                    fontSize: 30, // Tamanho do texto
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 252, 252), // Cor do texto
                  ),
                ),
                const Text(
                  "Urias",
                  style: TextStyle(
                    fontSize: 20, // Tamanho do texto
                    color: Color.fromARGB(255, 255, 252, 252), // Cor do texto
                  ),
                ),
                const SizedBox(height: 10), // Espaço controlado entre o topo e o próximo widget
                Center(
                  child: GestureDetector(
                    onTap: () {
                    },
                    child: Image.asset(
                      "assets/linha.png"
                    ),
                  ),
                ),
                const SizedBox(height: 20), // Espaço controlado entre o topo e o próximo widget
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/perfil_slipmami');
                    },
                    child: Image.asset(
                      "assets/play.png"
                    ),
                  ),
                ),
                const SizedBox(height: 20), // Espaço controlado entre o topo e o próximo widget
                Row( // Colocando "setas" e "compartilhar" nas extremidades com o texto ao centro
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Alinha um em cada canto
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/perfil_slipmami');
                      },
                      child: Image.asset(
                        "assets/setas.png"
                      ),
                    ),
                    const Text(
                      "ÁLBUM : FÚRIA",
                      style: TextStyle(
                        fontSize: 20, // Tamanho do texto
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 252, 252), // Cor do texto
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/perfil_slipmami');
                      },
                      child: Image.asset(
                        "assets/compartilhar.png"
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20), // Espaço controlado entre o topo e o próximo widget
                Center(
                  child: GestureDetector(
                    onTap: () {
                    },
                    child: Image.asset(
                      "assets/letra.png"
                    ),
                  ),
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void buttonEnterClick() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacementNamed(context, '/');
    } else {
      print("form erro");
    }
  }
}

import 'package:flutter/material.dart';

class Biblioteca extends StatefulWidget {
  const Biblioteca({super.key});

  @override
  State<Biblioteca> createState() => _HomeState();
}

class _HomeState extends State<Biblioteca> {
  final _formKey = GlobalKey<FormState>();
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(12.0), // Margem interna ao redor do container principal
        margin: const EdgeInsets.all(12), // Margem externa ao redor do container principal
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 145, 13, 101), // Cor de gradiente no topo
              Color.fromARGB(144, 0, 0, 0), // Cor de gradiente na parte inferior
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20), // Controle da distância do topo
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/perfil_slipmami');
                            },
                            child: Image.asset(
                              "assets/fotoperfil.png",
                              width: 50, // Largura da imagem
                              height: 50, // Altura da imagem
                            ),
                          ),
                          const SizedBox(width: 10), // Espaço entre a imagem e o texto
                          const Text(
                            "Sua Biblioteca",
                            style: TextStyle(
                              fontSize: 25, // Tamanho do texto
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 255, 252, 252), // Cor do texto
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        right: 0, // Posiciona o botão à direita
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/perfil_slipmami');
                          },
                          child: Image.asset(
                            "assets/adicionar.png",
                            width: 50, // Largura do botão adicionar
                            height: 50, // Altura do botão adicionar
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20), // Espaço controlado entre o topo e o próximo widget
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/perfil_slipmami');
                    },
                    child: Image.asset(
                      "assets/retangulobibli.png"
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
                      "assets/retangulobibli1.png"
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
                      "assets/retangulobibli2.png"
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
                      "assets/retangulobibli3.png"
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
                      "assets/retangulobibli4.png"
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
                      "assets/retangulobibli5.png"
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
                      "assets/retangulobibli6.png"
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
                      "assets/retangulobibli7.png"
                    ),
                  ),
                ),
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

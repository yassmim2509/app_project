import 'package:flutter/material.dart';

class Biblioteca extends StatefulWidget {
  const Biblioteca({super.key});

  @override
  State<Biblioteca> createState() => _BibliotecaState();
}

class _BibliotecaState extends State<Biblioteca> {
  final List<String> _imagensBiblioteca = [
    "assets/retangulobibli.png",
    "assets/retangulobibli1.png",
    "assets/retangulobibli2.png",
    "assets/retangulobibli3.png",
    "assets/retangulobibli4.png",
    "assets/retangulobibli5.png",
    "assets/retangulobibli6.png",
    "assets/retangulobibli7.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(12.0), // Margem interna
        margin: const EdgeInsets.all(12), // Margem externa
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 145, 13, 101), // Cor superior
              Color.fromARGB(144, 0, 0, 0), // Cor inferior
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Cabeçalho
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/perfil_slipmami');
                      },
                      child: Image.asset(
                        "assets/fotoperfil.png",
                        width: 50,
                        height: 50,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "Sua Biblioteca",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 252, 252),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/perfil_slipmami');
                      },
                      child: Image.asset(
                        "assets/adicionar.png",
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Lista dinâmica de imagens
              ..._imagensBiblioteca.map(
                (imagem) => Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/perfil_slipmami');
                      },
                      child: Image.asset(imagem),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

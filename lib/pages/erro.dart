import 'package:flutter/material.dart';

class Erro extends StatefulWidget {
  const Erro({super.key});

  @override
  State<Erro> createState() => _ErroState();
}

class _ErroState extends State<Erro> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF8B0166), // Cor superior
                  Color(0xFF000000), // Cor inferior
                ],
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/imagens/erro.png",
                    width: 200,
                    height: 200,
                  ),
                  const SizedBox(height: 20), // Espaçamento entre a imagem e o texto
                  const Text(
                    'Usuário não disponível',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ],
              ),
            ),
          ),
          // Botão de voltar no canto superior esquerdo
          Positioned(
            top: 45,
            left: 16,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context); // Volta para a tela anterior
              },
            ),
          ),
        ], 
      ),
    );
  }
}
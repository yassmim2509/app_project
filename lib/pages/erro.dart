import 'package:flutter/material.dart';

class Erro extends StatefulWidget {
  const Erro({super.key});

  @override
  State<Erro> createState() => _ErroState();
}

class _ErroState extends State<Erro> {
  // Definição das cores usadas no gradiente
  static const Color topGradientColor = Color(0xFF8B0166);
  static const Color bottomGradientColor = Color(0xFF000000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Fundo com gradiente
          SizedBox.expand(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    topGradientColor,
                    bottomGradientColor,
                  ],
                ),
              ),
            ),
          ),
          // Conteúdo principal (imagem e texto)
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/imagens/erro.png",
                  width: 200,
                  height: 200,
                ),
                const SizedBox(height: 20),
                const Text(
                  'Usuário não disponível',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // Botão de voltar
          Positioned(
            top: 45,
            left: 16,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 28,
              ),
              onPressed: () {
                Navigator.pop(context); // Volta para a tela anterior
              },
              tooltip: "Voltar",
            ),
          ),
        ],
      ),
    );
  }
}

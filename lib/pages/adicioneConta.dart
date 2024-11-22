import 'package:flutter/material.dart';

class AdicioneConta extends StatefulWidget {
  const AdicioneConta({super.key});

  @override
  State<AdicioneConta> createState() => _AdicioneContaState();
}

class _AdicioneContaState extends State<AdicioneConta> {
  String? _nomePerfil;
  final _nomePerfilController = TextEditingController();

  @override
  void dispose() {
    _nomePerfilController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Container(
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              const Text(
                'SYMPHONIE',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'BEM VINDO(A) AO SYMPHONIE',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white70,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              // Adicionando o Form
              Column(
                children: [
                  TextFormField(
                    controller: _nomePerfilController,
                    decoration: const InputDecoration(
                      labelText: 'Nome do perfil',
                      labelStyle: TextStyle(color: Colors.white70),
                      filled: true,
                      fillColor: Color.fromARGB(50, 255, 255, 255),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      // Ação para adicionar a foto
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.add_a_photo, color: Colors.white70),
                        SizedBox(width: 8),
                        Text(
                          'Adicione sua foto',
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: _onEntrarPressionado,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    child: const Text(
                      'ENTRAR',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onEntrarPressionado() {
    final nome = _nomePerfilController.text.trim();
    if (nome.isEmpty) {
      _mostrarErro('Por favor, insira o nome do perfil');
      return;
    }

    if (nome.length < 3) {
      _mostrarErro('O nome deve ter pelo menos 3 caracteres');
      return;
    }

    _nomePerfil = nome;
    print('Nome do perfil: $_nomePerfil');
    Navigator.pushReplacementNamed(context, '/home');
  }

  void _mostrarErro(String mensagem) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Erro'),
        content: Text(mensagem),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }
}

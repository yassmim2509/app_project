import 'package:flutter/material.dart';

class Contas extends StatefulWidget {
  const Contas({super.key});

  @override
  State<Contas> createState() => _ContasState();
}

class _ContasState extends State<Contas> {
  // Lista de perfis para exibição dinâmica
  final List<Map<String, String>> _profiles = [
    {'name': 'Lucas', 'image': 'assets/imagens/lucass.png', 'route': '/home'},
    {'name': 'Claudete', 'image': 'assets/imagens/claudete.png', 'route': '/home'},
    {'name': 'Duda', 'image': 'assets/imagens/duda.png', 'route': '/home'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(12.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 145, 13, 101),
              Color.fromARGB(144, 0, 0, 0),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo da aplicação
            InkWell(
              onTap: () {
                print("Logo clicado");
                Navigator.pushNamed(context, '/contas');
              },
              child: Image.asset(
                "assets/imagens/logo.png",
                width: 250,
                height: 250,
              ),
            ),
            const SizedBox(height: 20),
            // Título
            const Text(
              "Quem é você?",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            // GridView com perfis de usuário
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 40,
                  crossAxisSpacing: 40,
                ),
                itemCount: _profiles.length + 1, // Perfis + botão de adicionar
                itemBuilder: (context, index) {
                  if (index < _profiles.length) {
                    final profile = _profiles[index];
                    return _buildProfileButton(
                      name: profile['name']!,
                      imagePath: profile['image']!,
                      route: profile['route']!,
                    );
                  } else {
                    return _buildAddProfileButton();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Função para criar um botão de perfil
  Widget _buildProfileButton({
    required String name,
    required String imagePath,
    required String route,
  }) {
    return InkWell(
      onTap: () {
        print("Perfil de $name clicado");
        Navigator.pushNamed(context, route);
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(imagePath),
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  // Função para criar o botão de adição de novo perfil
  Widget _buildAddProfileButton() {
    return InkWell(
      onTap: () {
        print("Adicionar nova conta clicado");
        Navigator.pushNamed(context, '/adicioneConta');
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
            child: const Icon(
              Icons.add,
              size: 40,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Adicione uma nova conta',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

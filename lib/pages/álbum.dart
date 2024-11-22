import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/album': (context) => const AlbumScreen(),
        '/login': (context) => const LoginScreen(),
        '/tocando': (context) => const TocandoScreen(),
      },
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/album');
          },
          child: const Text('Ir para Álbum'),
        ),
      ),
    );
  }
}

class AlbumScreen extends StatelessWidget {
  const AlbumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de imagens repetidas
    final List<String> imagens = List.generate(8, (index) => 'assets/images/racha.png');

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF000000), // Preto
              Color.fromARGB(139, 255, 255, 255), // Branco transparente
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/tocando');
                },
                child: Container(
                  width: 50,
                  height: 50,
                  child: Image.asset('assets/images/seta.png'),
                ),
              ),
              const SizedBox(height: 20),
              Image.asset(
                'assets/images/furia.png',
                height: 250,
                width: 850,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 10),
              const Text(
                "FÚRIA",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 37,
                ),
              ),
              const Text(
                "Urias",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 20),
              // Exibição das imagens repetidas em uma lista
              ...imagens.map(
                (img) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Image.asset(
                    img,
                    height: 100,
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

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Tela de Login'),
      ),
    );
  }
}

class TocandoScreen extends StatelessWidget {
  const TocandoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Tela Tocando'),
      ),
    );
  }
}

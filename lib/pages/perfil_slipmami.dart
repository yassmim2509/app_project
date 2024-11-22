import 'package:app_streaming/pages/login.dart';
import 'package:app_streaming/pages/style.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/gradient': (context) => GradientScreen(),
        '/login': (context) => Login(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      ),
    );
  }
}

class GradientScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              MinhaCor.gradientpreto,
              MinhaCor.fucsiaRosa,
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/pesquisa');
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    child: Image.asset('assets/images/seta.png', height: 50),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Image.asset(
                  'assets/images/slipmami.png',
                  height: 250,
                ),
              ),
              const Text(
                "SLIPMAMI",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 33,
                ),
              ),
              const Text(
                "TOP 3 - Mais ouvidas do Artista",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const Divider(
                color: Colors.white,
                thickness: 3,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Image.asset(
                  'assets/images/oompaloompa.png',
                ),
              ),
              const Divider(
                color: Colors.white,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Image.asset(
                  'assets/images/cervaswa.png',
                ),
              ),
              const Divider(
                color: Colors.white,
                thickness: 1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Image.asset(
                  'assets/images/ficha.png',
                ),
              ),
              const Text(
                "Álbuns e EPs",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/malvatrem.png',
                        height: 150,
                      ),
                    ],
                  ),
                  SizedBox(width: 50),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/posturada1.png',
                        height: 150,
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Image.asset(
                  'assets/images/slipajudou.png',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

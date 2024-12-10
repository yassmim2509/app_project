import 'package:app_streaming/pages/login.dart';
import 'package:app_streaming/pages/style.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/album': (context) => AlbumScreen(),
        '/login': (context) => Login(),
      },
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/tocando');
          },
          child: Text(''),
        ),
      ),
    );
  }
}

class AlbumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              MinhaCor.gradientpreto,
              const Color.fromARGB(139, 255, 255, 255),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),

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

                     Transform.translate(
                      offset: Offset(0, -5),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Image.asset(
                          'assets/images/furia.png',

                          height: 250,
                          width: 850,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Transform.translate(
                offset: Offset(0, -23),
                child: const Text(
                  "FÚRIA",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 37,
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(0, -32),
                child: const Text(
                  "Urias",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.normal
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(0, -70),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Image.asset(
                    'assets/images/racha.png', 

                    height: 100,
                  ),
                ),
              ),

                      Transform.translate(
                offset: Offset(0, -145),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Image.asset(
                    'assets/images/racha.png',

                    height: 100,
                  ),
                ),
              ),

              Transform.translate(
                offset: Offset(0, -220),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Image.asset(
                    'assets/images/racha.png',

                    height: 100,
                  ),
                ),
              ),

                       Transform.translate(
                offset: Offset(0, -295),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Image.asset(
                    'assets/images/racha.png',

                    height: 100,
                  ),
                ),
              ),

                Transform.translate(
                offset: Offset(0, -369),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Image.asset(
                    'assets/images/racha.png',

                    height: 100,
                  ),
                ),
              ),

              Transform.translate(
                offset: Offset(0, -443),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Image.asset(
                    'assets/images/racha.png',

                    height: 100,
                  ),
                ),
              ),

                  Transform.translate(
                offset: Offset(0, -515),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Image.asset(
                    'assets/images/racha.png',

                    height: 100,
                  ),
                ),
              ),

              Transform.translate(
                offset: Offset(0, -587),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Image.asset(
                    'assets/images/racha.png',

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


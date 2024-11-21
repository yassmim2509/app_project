import 'package:flutter/material.dart';
import 'package:quintoflutter/shared/style.dart';
import 'package:quintoflutter/pages/login.dart';

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
            Navigator.pushNamed(context, '/album');
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
              MyColors.gradientpreto,
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

                    Transform.translate(
                      offset: Offset(-160, 25),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                         child: Image.asset(
                            'assets/imagens/seta.png', 
                            height: 50,
                          ), 
                        ),
                      ),
                    ),

                     Transform.translate(
                      offset: Offset(0, -5),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Image.asset(
                          'assets/imagens/furia.png',
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
                    'assets/imagens/racha.png', 
                    height: 100,
                  ),
                ),
              ),

                      Transform.translate(
                offset: Offset(0, -145),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Image.asset(
                    'assets/imagens/racha.png',
                    height: 100,
                  ),
                ),
              ),

              Transform.translate(
                offset: Offset(0, -220),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Image.asset(
                    'assets/imagens/racha.png',
                    height: 100,
                  ),
                ),
              ),

                       Transform.translate(
                offset: Offset(0, -295),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Image.asset(
                    'assets/imagens/racha.png',
                    height: 100,
                  ),
                ),
              ),

                Transform.translate(
                offset: Offset(0, -369),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Image.asset(
                    'assets/imagens/racha.png',
                    height: 100,
                  ),
                ),
              ),

              Transform.translate(
                offset: Offset(0, -443),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Image.asset(
                    'assets/imagens/racha.png',
                    height: 100,
                  ),
                ),
              ),

                  Transform.translate(
                offset: Offset(0, -515),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Image.asset(
                    'assets/imagens/racha.png',
                    height: 100,
                  ),
                ),
              ),

              Transform.translate(
                offset: Offset(0, -587),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Image.asset(
                    'assets/imagens/racha.png',
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

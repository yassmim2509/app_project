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
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  
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
                              icon: const Icon(Icons.arrow_back,
                                  color: Colors.white),
                              onPressed: () {
                                Navigator.pop(
                                    context); // Volta para a tela anterior
                              },
                            ),
                          ),

                        ],
                      ),
                    ),


                  
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Image.asset(
                        'assets/images/slipmami.png',

                        height: 250,
                      ),
                    ),
                  ],
                ),
              ),
              
              Transform.translate(
                offset: Offset(0, -30),
                child: const Text(
                  "SLIPMAMI",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 33,
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(0, -32),
                child: const Text(
                  "TOP 3 - Mais ouvidas do Artista",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(0, -26),
                child: Container(
                  width: 363,
                  child: const Divider(
                    color: Colors.white,
                    thickness: 3,
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Transform.translate(
                      offset: Offset(0, -69),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Image.asset(
                          'assets/images/oompaloompa.png',

                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Transform.translate(
                offset: Offset(0, -85),
                child: Container(
                  width: 363,
                  child: const Divider(
                    color: Colors.white,
                    thickness: 1,
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Transform.translate(
                      offset: Offset(0, -129),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Image.asset(
                          'assets/images/cervaswa.png',

                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Transform.translate(
                offset: Offset(0, -145),
                child: Container(
                  width: 363,
                  child: const Divider(
                    color: Colors.white,
                    thickness: 1,
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 30),
                    Transform.translate(
                      offset: Offset(0, -190),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Image.asset(
                          'assets/images/ficha.png',

                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Transform.translate(
                offset: Offset(0, -200),
                child: const Text(
                  "Álbuns e EPs",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),

              Transform.translate(
                offset: Offset(0, -180), 
                child: Row(
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
              ),

                Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Transform.translate(
                      offset: Offset(0, -170),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Image.asset(
                          'assets/images/slipajudou.png',

                        ),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
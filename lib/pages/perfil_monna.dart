import 'package:quintoflutter/pages/login.dart';
import 'package:quintoflutter/shared/style.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/perfil_mob': (context) => MobScreen(),
        '/login': (context) => const Login(),
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

class MobScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
                  Color.fromARGB(255, 30, 146, 7),
                  Color.fromARGB(255, 179, 178, 178),
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

                                  'assets/images/seta.png',

                                  height: 50,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),


                  
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Image.asset(
                        'assets/images/mob_imagens/mob.png',

                        height: 250,
                      ),
                    ),
                  ],
                ),
              ),
              
              Transform.translate(
                offset: Offset(0, -30),
                child: const Text(
                  "MONNA BRUTAL",
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
                          'assets/images/mob_imagens/gravata.png',

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
                          'assets/images/mob_imagens/marmita.png',

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
                            'assets/images/mob_imagens/vistaGrossa.png', 

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
                offset: Offset(10, -190), 
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                     Transform.translate(
                offset: Offset(0, -5), 
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                            'assets/images/mob_imagens/vistaAlbum.png',

                          height: 150,
                        ),
                       
                      ],
                    ),
                  ],
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
import 'package:flutter/material.dart';

class Cafe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color.fromARGB(255, 50, 26, 8),
              const Color.fromARGB(255, 198, 169, 136),
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
                            'assets/images/setaVoltar.png', 
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
                          'assets/images/cafe.png',
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
                  "CAFÉ COM CRIME ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 27,
                    fontFamily: 'Lexend',
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(0, -32),
                child: const Text(
                  "Tati Daugnauti",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'lexendGiga',
                    fontWeight: FontWeight.normal
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(0, -70),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Image.asset(
                    'assets/images/caradecavalo.png', 
                    height: 100,
                  ),
                ),
              ),

                      Transform.translate(
                offset: Offset(0, -145),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Image.asset(
                    'assets/images/priscilabelfort.png',
                    height: 100,
                  ),
                ),
              ),

              Transform.translate(
                offset: Offset(0, -220),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Image.asset(
                    'assets/images/tatianaspitzner.png',
                    height: 100,
                  ),
                ),
              ),

                       Transform.translate(
                offset: Offset(0, -295),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Image.asset(
                    'assets/images/silviosantos.png',
                    height: 100,
                  ),
                ),
              ),

                Transform.translate(
                offset: Offset(0, -369),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Image.asset(
                    'assets/images/ivesota.png',
                    height: 100,
                  ),
                ),
              ),

              Transform.translate(
                offset: Offset(0, -443),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Image.asset(
                    'assets/images/ameninaemcativeiro.png',
                    height: 100,
                  ),
                ),
              ),

               Transform.translate(
                offset: Offset(0, -517),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Image.asset(
                    'assets/images/casodelmo.png',
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
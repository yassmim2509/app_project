import 'package:flutter/material.dart';

class Aju extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color.fromARGB(255, 210, 205, 211),
              const Color.fromARGB(255, 0, 0, 0),
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
                          'assets/images/aju(ep).png',
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
                  "AJU",
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
                  "Ajuliacosta",
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
                    'assets/images/ajumusica.png', 
                    height: 100,
                  ),
                ),
              ),

                      Transform.translate(
                offset: Offset(0, -145),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Image.asset(
                    'assets/images/naofoinada.png',
                    height: 100,
                  ),
                ),
              ),

              Transform.translate(
                offset: Offset(0, -220),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Image.asset(
                    'assets/images/7ruas.png',
                    height: 100,
                  ),
                ),
              ),

                       Transform.translate(
                offset: Offset(0, -295),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Image.asset(
                    'assets/images/homenscomovoce.png',
                    height: 100,
                  ),
                ),
              ),

                Transform.translate(
                offset: Offset(0, -369),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Image.asset(
                    'assets/images/maridodebandida.png',
                    height: 100,
                  ),
                ),
              ),

              Transform.translate(
                offset: Offset(0, -443),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Image.asset(
                    'assets/images/osuficiente.png',
                    height: 100,
                  ),
                ),
              ),

               Transform.translate(
                offset: Offset(0, -517),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Image.asset(
                    'assets/images/vocepareceumavergonha.png',
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
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
        primarySwatch: Colors.purple,
      ),
      routes: {
        '/login': (context) => Login(),
      },
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [MyColors.roxoBottoMGradiente, MyColors.gradientpreto],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView( // Adiciona rolagem
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              
              // Botão de voltar
              Transform.translate(
                offset: Offset(-150, 25),
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
              
              SizedBox(height: 10),
              
                     Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Image.asset(
                        'assets/images/foto_usuario.png',
                        height: 200,
                    
                      ),
                    ),
              
              
              Text(
                "Luana",
                style: TextStyle(color: Colors.white, fontSize: 29),
              ),
              
              SizedBox(height: 10),
              
              // Título "Suas playlists"
              Text(
                "Suas playlists",
                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              
              SizedBox(height: 20),
            
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(

                  children: [
              
           
             
                    Container(
                      height: 77,
                      width: 305,
                      color: Colors.black54, 
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            8), 
                        child: Image.asset(
                          'assets/images/pesq. melanie.png', 
                          fit: BoxFit
                              .cover, 
                        ),
                      ),
                    ),

                    
                      Container(
                      height: 77,
                      width: 305,
                      color: Colors.black54, 
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            8), 
                        child: Image.asset(
                          'assets/images/pesq. matue.png', 
                          fit: BoxFit
                              .cover, 
                        ),
                      ),
                    ),

                           Container(
                      height: 77,
                      width: 305,
                      color: Colors.black54,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/pesq. jm.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                     Container(
                      height: 77,
                      width: 305,
                      color: Colors.black54,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/pesq veigh.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              
              SizedBox(height: 20),
              
              Text(
                "Configurações",
                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              
              SizedBox(height: 20),
              
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [

                  
                     Container(
                      height: 77,
                      width: 305,
                      color: Colors.black54,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/plano.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                      Container(
                      height: 77,
                      width: 305,
                      color: Colors.black54,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/dispositivos.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                  Container(
                      height: 77,
                      width: 305,
                      color: Colors.black54,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/informações.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),


                  ],
                ),
              ),
              
              SizedBox(height: 20),
              
              // Botão de logout
              Container(
                margin: EdgeInsets.symmetric(horizontal: 80),
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.red.shade700,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    "SAIR DA CONTA",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

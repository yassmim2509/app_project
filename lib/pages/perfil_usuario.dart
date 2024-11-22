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
            colors: [MinhaCor.roxoBottoMGradiente, MinhaCor.gradientpreto],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView( 
          child: Column(
            children: [
              SizedBox(height: 40),
              
              // Botão de voltar
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Image.asset('assets/images/seta.png', height: 50),
                ),
              ),
              
              SizedBox(height: 10),
              
              // Foto do usuário
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Image.asset('assets/images/foto_usuario.png', height: 200),
              ),
              
              // Nome do usuário
              Text("Luana", style: TextStyle(color: Colors.white, fontSize: 29)),
              
              SizedBox(height: 10),
              
              // Título "Suas playlists"
              Text("Suas playlists", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
              
              SizedBox(height: 20),
            
              // Seção de playlists
              PlaylistSection(),
              
              SizedBox(height: 20),
              
              // Título "Configurações"
              Text("Configurações", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
              
              SizedBox(height: 20),
              
              // Seção de configurações
              SettingsSection(),
              
              SizedBox(height: 20),
              
              // Botão de logout
              LogoutButton(),
              
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class PlaylistSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          PlaylistItem(image: 'assets/images/pesq. melanie.png'),
          PlaylistItem(image: 'assets/images/pesq. matue.png'),
          PlaylistItem(image: 'assets/images/pesq. jm.png'),
          PlaylistItem(image: 'assets/images/pesq veigh.png'),
        ],
      ),
    );
  }
}

class PlaylistItem extends StatelessWidget {
  final String image;

  PlaylistItem({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 77,
      width: 305,
      color: Colors.black54,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(image, fit: BoxFit.cover),
      ),
    );
  }
}

class SettingsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          SettingItem(image: 'assets/images/plano.png'),
          SettingItem(image: 'assets/images/dispositivos.png'),
          SettingItem(image: 'assets/images/informações.png'),
        ],
      ),
    );
  }
}

class SettingItem extends StatelessWidget {
  final String image;

  SettingItem({required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 77,
      width: 305,
      color: Colors.black54,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(image, fit: BoxFit.cover),
      ),
    );
  }
}

class LogoutButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Implement logout action here
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 80),
        height: 40,
        decoration: BoxDecoration(
          color: Colors.red.shade700,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text("SAIR DA CONTA", style: TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}


import 'package:app_streaming/pages/adicioneConta.dart';
import 'package:app_streaming/pages/contas.dart';
import 'package:app_streaming/pages/erro.dart';
import 'package:app_streaming/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:app_streaming/pages/cadastro.dart';
import 'package:app_streaming/pages/style.dart';
import 'package:app_streaming/pages/álbum.dart';
import 'package:app_streaming/pages/perfil_usuario.dart';
import 'package:app_streaming/pages/perfil_slipmami.dart';
import 'package:app_streaming/pages/home.dart';
import 'package:app_streaming/pages/pesquisa.dart';
import 'package:app_streaming/pages/videoscreen.dart';
import 'package:app_streaming/pages/biblioteca.dart';
import 'package:app_streaming/pages/tocando.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
      fontFamily: myFonts.fontPrimary,
        useMaterial3: true,
      ),
      initialRoute: "/videoscreen",
      routes: {
        '/login' : (context) => const Login(),  
        '/cadastro' : (context) => const Cadastro(),  
        '/contas': (context) => const Contas(),
        '/adicioneConta' : (context) => const AdicioneConta(),
        '/erro' : (context) => const Erro(),
        '/home': (context) =>  Homepage(),
        '/pesquisa' : (context) => const Pesquisa(),
        '/biblioteca' : (context) => const Biblioteca(),
        '/tocando' : (context) => const Tocando(),
        '/album': (context) => Tocando(),
        '/perfil_usuario': (context) => ProfileScreen(),
        '/perfil_slipmami': (context) => GradientScreen(),
        

        
        
     

        

      },
    );
  }
}

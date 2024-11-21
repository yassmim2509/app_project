import 'package:flutter/material.dart';
import 'package:quintoflutter/pages/login.dart';
import 'package:quintoflutter/pages/cadastro.dart';
import 'package:quintoflutter/shared/style.dart';
import 'package:quintoflutter/pages/splash_screen.dart';
import 'package:quintoflutter/pages/perfis/perfil_slipmami.dart';
import 'package:quintoflutter/pages/álbum.dart';
import 'package:quintoflutter/pages/perfis/perfil_usuario.dart';

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
        fontFamily: MyFonts.fontPrimary,
        colorScheme: ColorScheme.fromSeed(seedColor: MyColors.roxoBottomGradiente),
        useMaterial3: true,
      ),
      
      initialRoute: "/splash", 
      
      routes: {
        '/splash': (context) => SplashScreen(), 
        '/login': (context) => const Login(),
        '/Cadastro': (context) =>  Cadastro(),
        '/gradient': (context) => GradientScreen(),
        '/album': (context) => AlbumScreen(),
        '/usuario': (context) => ProfileScreen(),
      },
    );
  }
}

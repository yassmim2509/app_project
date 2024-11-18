
import 'package:app_streaming/pages/adicioneConta.dart';
import 'package:app_streaming/pages/contas.dart';
import 'package:app_streaming/pages/erro.dart';
import 'package:flutter/material.dart';
import 'package:app_streaming/pages/style.dart';

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
      initialRoute: "/contas",
      routes: {
        '/contas': (context) => const Contas(),
        '/adicioneConta' : (context) => const AdicioneConta(),
        '/erro': (context) => const Erro(),
      },
    );
  }
}
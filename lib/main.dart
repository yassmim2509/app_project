import 'package:app_streaming/pages/adicioneConta.dart';
import 'package:app_streaming/pages/erro.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'pages/tocando.dart';
import 'pages/login.dart';
import 'pages/cadastro.dart';
import 'pages/home.dart';
import 'pages/biblioteca.dart';
import 'pages/perfil_ajulia.dart';
import 'pages/perfil_ludmilla.dart';
import 'pages/perfil_slayyter.dart';
import 'pages/perfil_liniker.dart';
import 'pages/perfil_monna.dart';
import 'pages/perfil_pabllo.dart';
import 'pages/perfil_gloria.dart';
import 'pages/perfil_soffia.dart';
import 'pages/perfil_flomili.dart';
import 'pages/perfil_anitta.dart';
import 'pages/perfil_urias.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/login",
      routes: {
        '/perfil_anitta': (context) => AnittaScreen(),
        '/perfil_flomili': (context) => FloScreen(),
        '/perfil_urias': (context) => UriasScreen(),
        '/perfil_aju': (context) => AjuScreen(),
        '/perfil_ludmilla': (context) => LudScreen(),
        '/perfil_slay': (context) => SlayScreen(),
        '/perfil_lin': (context) => LinScreen(),
        '/perfil_mob': (context) => MobScreen(),
        '/perfil_vittar': (context) => VittarScreen(),
        '/perfil_groove': (context) => GrooveScreen(),
        '/perfil_soffia': (context) => SoffiaScreen(),
        '/erro': (context) => const Erro(),
         '/adicioneConta': (context) => const AdicioneConta(),
      },
      onGenerateRoute: (settings) {
        // Configurações de rotas dinâmicas
        if (settings.name == '/tocando') {
          final args = settings.arguments as Map<String, dynamic>;
          
          // Verifique se todos os argumentos necessários foram fornecidos
          if (args.containsKey('titulo') &&
              args.containsKey('artista') &&
              args.containsKey('youtubeUrl')) {
            return MaterialPageRoute(
              builder: (context) => Tocando(
                titulo: args['titulo'],
                artista: args['artista'],
                youtubeUrl: args['youtubeUrl'],
              ),
            );
          }

          // Retorna uma página de erro se os argumentos estiverem faltando
          return MaterialPageRoute(
            builder: (context) => Scaffold(
              appBar: AppBar(title: const Text("Erro")),
              body: const Center(
                child: Text("Parâmetros inválidos para a rota /tocando."),
              ),
            ),
          );
        }

        // Rotas padrão
        switch (settings.name) {
          case '/login':
            return MaterialPageRoute(builder: (context) => const Login());
          case '/cadastro':
            return MaterialPageRoute(builder: (context) => const Cadastro());
          case '/home':
            return MaterialPageRoute(builder: (context) => Homepage());
          case '/biblioteca':
            return MaterialPageRoute(builder: (context) => const Biblioteca());
          default:
            return MaterialPageRoute(
              builder: (context) => Scaffold(
                appBar: AppBar(title: const Text("Erro 404")),
                body: const Center(
                  child: Text("Página não encontrada."),
                ),
              ),
            );
        }
      },
    );
  }
}

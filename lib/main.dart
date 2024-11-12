import 'package:app_project/pages/cadastro.dart';
import 'package:app_project/pages/bilbioteca.dart';
import 'package:app_project/pages/splashscreen.dart';
import 'package:app_project/shared/style.dart';
import 'package:flutter/material.dart';
import 'package:app_project/pages/login.dart';
import 'package:app_project/pages/pesquisa.dart';
import 'package:app_project/pages/home.dart';
import 'package:app_project/pages/tocando.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: MyColors.roxodiferente),
        useMaterial3: true,
      ),
      initialRoute: "/splash",
      routes: {
        '/splash': (context) => SplashScreen(),
        '/homeWithNavBar': (context) => const HomeWithNavigationBar(),
        '/login': (context) => const Login(),
        '/cadastro': (context) => const Cadastro(),
        '/biblioteca': (context) => const Bilbioteca(),
        '/pesquisa': (context) => const Pesquisa(),
        '/home': (context) => const Home(),
        '/tocando': (context) => const Tocando(),
      },
    );
  }
}



class HomeWithNavigationBar extends StatefulWidget {
  const HomeWithNavigationBar({Key? key}) : super(key: key);

  @override
  _HomeWithNavigationBarState createState() => _HomeWithNavigationBarState();
}

class _HomeWithNavigationBarState extends State<HomeWithNavigationBar> {
  int _selectedIndex = 0;

  // Função para atualizar a seleção da barra de navegação
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Define as páginas para cada item da barra de navegação
  final List<Widget> _pages = [
    const Home(),        // Página inicial
    const Pesquisa(),    // Página de pesquisa
    const Bilbioteca(),  // Página de biblioteca
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _pages[_selectedIndex], // Exibe a página selecionada
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              child: Icon(
                Icons.home,
                color: _selectedIndex == 0 ? Colors.white : Colors.grey,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              child: Icon(
                Icons.search,
                color: _selectedIndex == 1 ? Colors.white : Colors.grey,
              ),
            ),
            label: 'Pesquisa',
          ),
          BottomNavigationBarItem(
            icon: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              child: Icon(
                Icons.library_books,
                color: _selectedIndex == 2 ? Colors.white : Colors.grey,
              ),
            ),
            label: 'Biblioteca',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

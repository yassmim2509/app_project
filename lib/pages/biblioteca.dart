import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'tocando.dart';
import 'pesquisa.dart';
import 'package:app_streaming/pages/style.dart';

class Biblioteca extends StatelessWidget {
  const Biblioteca({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Biblioteca",
          style: TextStyle(
            color: Colors.white, // Torna o texto branco
          ),
        ),
        // Personalizando a cor da seta de voltar
        iconTheme: const IconThemeData(
          color: Colors.white, // Cor da seta "Voltar" para branco
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0), // Cor de fundo do AppBar
      ),
      // Adicionando o gradiente no fundo da tela
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [MinhaCor.PrimariaBase, Colors.black],
          ),
        ),
        child: StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('musicas').snapshots(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
              return const Center(
                child: Text(
                  "Nenhuma música encontrada.",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              );
            }

            final musicas = snapshot.data!.docs;

            return ListView.builder(
              itemCount: musicas.length,
              itemBuilder: (context, index) {
                final musica = musicas[index];
                final data = musica.data() as Map<String, dynamic>?;
                final titulo = data != null && data.containsKey('titulo')
                    ? data['titulo'] as String
                    : 'Sem título';
                final artista = data != null && data.containsKey('artista')
                    ? data['artista'] as String
                    : 'Desconhecido';
                final youtubeUrl = data != null && data.containsKey('audio')
                    ? data['audio'] as String
                    : '';
                final imagem = data != null && data.containsKey('imagem')
                    ? data['imagem'] as String
                    : '';

                return ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      imagem,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          Icons.image_not_supported,
                          size: 50,
                          color: Colors.grey,
                        );
                      },
                    ),
                  ),
                  title: Text(
                    titulo,
                    style: const TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    artista,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  onTap: () {
                    if (youtubeUrl.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Essa música não tem um link do YouTube."),
                        ),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Tocando(
                            titulo: titulo,
                            artista: artista,
                            youtubeUrl: youtubeUrl,
                          ),
                        ),
                      );
                    }
                  },
                );
              },
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Início",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Pesquisa",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: "Biblioteca",
          ),
        ],
        selectedItemColor: const Color.fromRGBO(145, 13, 101, 1),
        unselectedItemColor: Colors.white,
        currentIndex: 2, // Define que "Biblioteca" é a aba ativa
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/home'); // Vai para a Home
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Pesquisa()),
            );
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Biblioteca()),
            );
          }
        },
      ),
    );
  }
}

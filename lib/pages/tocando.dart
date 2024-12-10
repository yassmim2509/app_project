import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:app_streaming/pages/style.dart';

class Tocando extends StatefulWidget {
  final String titulo;
  final String artista;
  final String youtubeUrl;

  const Tocando({
    Key? key,
    required this.titulo,
    required this.artista,
    required this.youtubeUrl,
  }) : super(key: key);

  @override
  State<Tocando> createState() => _TocandoState();
}

class _TocandoState extends State<Tocando> {
  late YoutubePlayerController _youtubeController;

  @override
  void initState() {
    super.initState();
    _youtubeController = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.youtubeUrl) ?? "",
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _youtubeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 251, 251),
      appBar: AppBar(
        title: Text(
          widget.titulo,
          style: const TextStyle(
            color: Colors.white, 
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Container(
        
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [MinhaCor.PrimariaBase, Colors.black],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 160),
            YoutubePlayer(
              controller: _youtubeController,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.red,
            ),
            const SizedBox(height: 20),
            Text(
              widget.titulo,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Título da música branco
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              widget.artista,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Letra indisponível.")),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

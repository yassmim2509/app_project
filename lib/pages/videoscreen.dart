import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

class VideoScreen extends StatefulWidget {
  final String videoUrl;

  const VideoScreen({super.key, required this.videoUrl});

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _initializeWebView();
  }

  // Função para inicializar o WebView com suporte tanto para Android quanto iOS
  void _initializeWebView() {
    if (WebViewPlatform.instance is WebKitWebViewPlatform) {
      final creationParams = WebKitWebViewControllerCreationParams();
      _controller = WebViewController.fromPlatformCreationParams(creationParams);
    } else if (WebViewPlatform.instance is AndroidWebViewPlatform) {
      final creationParams = AndroidWebViewControllerCreationParams();
      _controller = WebViewController.fromPlatformCreationParams(creationParams);
    } else {
      _controller = WebViewController();
    }

    // Configurar o WebView
    _controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.videoUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: WebViewWidget(controller: _controller),
    );
  }

  // Função para construir o AppBar
  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: Colors.white),
        onPressed: () {
          Navigator.pop(context); // Voltar para a tela anterior
        },
      ),
      title: const Text(
        'Tanto faz - Urias',
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'LexendGiga',
          fontSize: 16,
        ),
      ),
    );
  }
}

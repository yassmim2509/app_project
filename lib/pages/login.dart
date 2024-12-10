import 'package:app_streaming/pages/contas.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _showPassword = false;

  Future<void> _login() async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      _showSnackBar('Bem-vindo!', Colors.purple);
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Contas()),
      );
    } catch (e) {
      _showSnackBar('Email ou senha inválidos', Colors.red);
    }
  }

  Future<void> _signInWithGoogle() async {
    GoogleSignIn googleSignIn = GoogleSignIn();

    try {
      GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      if (googleUser == null) {
        _showSnackBar('Login cancelado pelo usuário.', Colors.red);
        return;
      }

      GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
      User? user = userCredential.user;

      if (user != null) {
        _showSnackBar('Bem-vindo, ${user.displayName}!', Colors.purple);
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Contas()),
        );
      }
    } catch (e) {
      _showSnackBar('Erro ao fazer login: $e', Colors.red);
    }
  }

  void _showSnackBar(String message, Color color) {
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: color,
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Container(
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(12.0),
        margin: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 145, 13, 101),
              Color.fromARGB(144, 0, 0, 0),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 60),
                Center(child: Image.asset("assets/logo.png")),
                const Center(
                  child: Text(
                    "LOGIN",
                    style: TextStyle(
                      fontSize: 29,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 252, 252),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "EMAIL",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 255, 252, 252),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 350,
                  child: TextFormField(
                    controller: _emailController,
                    autofocus: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(153, 165, 63, 131),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    validator: (String? email) {
                      if (email == null || email.isEmpty) {
                        return "O e-mail não pode ser vazio";
                      }
                      if (!email.contains("@")) {
                        return "O e-mail é inválido";
                      }
                      return null;
                    },
                    style: const TextStyle(
                        color: Color.fromARGB(255, 252, 252, 252)),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "SENHA",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 255, 252, 252),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 350,
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: !_showPassword,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(153, 165, 63, 131),
                      suffixIcon: GestureDetector(
                        child: Icon(
                          _showPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: const Color.fromARGB(255, 250, 250, 250),
                        ),
                        onTap: () {
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    validator: (String? senha) {
                      if (senha == null || senha.isEmpty) {
                        return "A senha não pode ser vazia";
                      }
                      if (senha.length < 8) {
                        return "Senha deve conter 8 caracteres";
                      }
                      return null;
                    },
                    style: const TextStyle(
                        color: Color.fromARGB(255, 252, 252, 252)),
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: SizedBox(
                    width: 90,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: _login,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 61, 94, 58),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                      ),
                      child: const Text(
                        "Entrar",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Row(
                  children: <Widget>[
                    Expanded(
                      child: Divider(color: Colors.white, indent: 5, endIndent: 5),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        'ou',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    Expanded(
                      child: Divider(color: Colors.white, indent: 5, endIndent: 5),
                    ),
                  ],
                ),
                 GestureDetector(
                      child: const Text(
                        "Cadastrar-se",
                        style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 20),
                      
                      ),
                      onTap: () => Navigator.pushNamed(context, "/cadastro"),
                    ),
                const SizedBox(height: 15),
                // Botão para login com o Google
               
                Center(
                  child: TextButton(
                    onPressed: _signInWithGoogle,
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      fixedSize: const Size(230, 50),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/imagens/google.png', height: 16),
                        const SizedBox(width: 3),
                        const Text(
                          'Continuar com o Google',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

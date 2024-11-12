import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  bool _showPassword = false;

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
                      if (email == "" || email == null) {
                        return "O e-mail não pode ser vazio";
                      }
                      if (email.length < 6) {
                        return "O e-mail é inválido";
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
                      if (senha == "" || senha == null) {
                        return "A senha não pode ser vazia";
                      }
                      if (senha.length < 8) {
                        return "Senha deve conter 8 caracteres";
                      }
                      if (senha.contains("+")) {
                        return "A senha não pode conter +";
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
                      onPressed: buttonEnterClick,
                      child: const Text(
                        "Entrar",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 61, 94, 58),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Divider(),
                const SizedBox(height: 20),
                const Center(
                  child: Text(
                    "Não possui login?",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/cadastro");
                      },
                    child: const Text(
                      "CADASTRE-SE",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Color.fromARGB(255, 165, 63, 131),
                      ),
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

  void buttonEnterClick() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacementNamed(context, '/homeWithNavBar');
    } else {
      print("form erro");
    }
  }
}

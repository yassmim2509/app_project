import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
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
                const SizedBox(height: 10),
                Center(child: Image.asset("assets/logo.png")),
                const Center(
                  child: Text(
                    "CADASTRO",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 252, 252),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "NOME",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 255, 252, 252),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 300,
                  child: TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(153, 165, 63, 131),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    ),
                    validator: (String? nome) {
                      if (nome == "" || nome == null) {
                        return "O nome não pode ser vazio";
                      }
                      if (nome.length < 6) {
                        return "O nome é inválido";
                      }
                      if (!nome.contains("")) {
                        return "O nome é inválido";
                      }
                      return null;
                    },
                    style: const TextStyle(
                        color: Color.fromARGB(255, 252, 252, 252)),
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  "EMAIL",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 255, 252, 252),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 300,
                  child: TextFormField(
                    autofocus: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(153, 165, 63, 131),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
                const SizedBox(height: 12),
                const Text(
                  "SENHA",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 255, 252, 252),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 300,
                  child: TextFormField(
                    obscureText: !_showPassword,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(153, 165, 63, 131),
                      suffixIcon: GestureDetector(
                        child: Icon(
                          _showPassword ? Icons.visibility : Icons.visibility_off,
                          color: const Color.fromARGB(255, 250, 250, 250),
                        ),
                        onTap: () {
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
                const SizedBox(height: 12),
                const Text(
                  "CONFIRMAR SENHA",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 255, 252, 252),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  width: 300,
                  child: TextFormField(
                    obscureText: !_showPassword,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color.fromARGB(153, 165, 63, 131),
                      suffixIcon: GestureDetector(
                        child: Icon(
                          _showPassword ? Icons.visibility : Icons.visibility_off,
                          color: const Color.fromARGB(255, 250, 250, 250),
                        ),
                        onTap: () {
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
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
                    width: 100,
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

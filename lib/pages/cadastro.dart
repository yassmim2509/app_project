import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  final _formKey = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  // final TextEditingController _cpfController = TextEditingController();

  

  Future<void> _register() async {
    if (_formKey.currentState!.validate()) {
      try {
        // Tenta criar o usuário com e-mail e senha
        UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passwordController.text.trim(),
          // username: _usernameController.text.trim(),
        );

        // Tenta atualizar o nome do usuário
        await userCredential.user!.updateDisplayName(_usernameController.text.trim());
        await userCredential.user!.reload();
        _auth.currentUser; // Recarrega o usuário atualizado

        // Exibe uma notificação de sucesso e redireciona
        _showSnackBar('Cadastro realizado com sucesso!', Colors.purple);
        Navigator.pop(context); // Volta para a tela de login após o cadastro
      } catch (e) {
        // Exibe uma notificação de erro específico
        _showSnackBar('Erro no cadastro', Colors.red);
      }
    }
  }

  

  // final _formKey = GlobalKey<FormState>();
  bool _showPassword = false;
  bool _showConfirmPassword = false;
  String? _senha;
  String? _confirmarSenha;
  
  void _showSnackBar(String message, Color color) {
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: color,
      duration: Duration(seconds: 2),
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
                    controller: _usernameController,
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
                    controller: _emailController,
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
                    controller: _passwordController,
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
                    controller: _confirmPasswordController,
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
                    width: 90,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: _register,
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
                SizedBox(height: 20,),
                GestureDetector(
                      child: const Text(
                        "Já sou cadastrado(a)",
                        style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 15),
                      
                      ),
                      onTap: () => Navigator.pushNamed(context, "/login"),
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
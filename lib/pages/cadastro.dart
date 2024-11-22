import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  bool _showPassword = false;

  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();
  final _confirmarSenhaController = TextEditingController();

  @override
  void dispose() {
    _nomeController.dispose();
    _emailController.dispose();
    _senhaController.dispose();
    _confirmarSenhaController.dispose();
    super.dispose();
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              Center(child: Image.asset("assets/logo.png")),
              const Text(
                "CADASTRO",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 252, 252),
                ),
              ),
              const SizedBox(height: 20),
              // Campo Nome
              buildField(
                controller: _nomeController,
                label: "NOME",
                hint: "Digite seu nome",
                validator: validateNome,
              ),
              const SizedBox(height: 12),
              // Campo Email
              buildField(
                controller: _emailController,
                label: "EMAIL",
                hint: "Digite seu e-mail",
                validator: validateEmail,
              ),
              const SizedBox(height: 12),
              // Campo Senha
              buildField(
                controller: _senhaController,
                label: "SENHA",
                hint: "Digite sua senha",
                obscureText: !_showPassword,
                isPassword: true,
                onSuffixTap: () {
                  setState(() {
                    _showPassword = !_showPassword;
                  });
                },
                validator: validateSenha,
              ),
              const SizedBox(height: 12),
              // Campo Confirmar Senha
              buildField(
                controller: _confirmarSenhaController,
                label: "CONFIRMAR SENHA",
                hint: "Confirme sua senha",
                obscureText: !_showPassword,
                isPassword: true,
                onSuffixTap: () {
                  setState(() {
                    _showPassword = !_showPassword;
                  });
                },
                validator: validateSenha,
              ),
              const SizedBox(height: 30),
              // Botão Entrar
              Center(
                child: SizedBox(
                  width: double.infinity,
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
    );
  }

  /// Método para criar campos reutilizáveis.
  Widget buildField({
    required TextEditingController controller,
    required String label,
    required String hint,
    bool obscureText = false,
    bool isPassword = false,
    String? Function(String?)? validator,
    VoidCallback? onSuffixTap,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 15,
            color: Color.fromARGB(255, 255, 252, 252),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          width: 300,
          child: TextField(
            controller: controller,
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: const TextStyle(color: Colors.white70),
              filled: true,
              fillColor: const Color.fromARGB(153, 165, 63, 131),
              suffixIcon: isPassword
                  ? GestureDetector(
                      onTap: onSuffixTap,
                      child: Icon(
                        obscureText ? Icons.visibility_off : Icons.visibility,
                        color: const Color.fromARGB(255, 250, 250, 250),
                      ),
                    )
                  : null,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// Validação do campo Nome.
  String? validateNome(String? nome) {
    if (nome == null || nome.isEmpty) {
      return "O nome não pode ser vazio";
    }
    if (nome.length < 6) {
      return "O nome deve conter pelo menos 6 caracteres";
    }
    return null;
  }

  /// Validação do campo Email.
  String? validateEmail(String? email) {
    if (email == null || email.isEmpty) {
      return "O e-mail não pode ser vazio";
    }
    if (!RegExp(r"^[^@\s]+@[^@\s]+\.[^@\s]+$").hasMatch(email)) {
      return "O e-mail é inválido";
    }
    return null;
  }

  /// Validação do campo Senha.
  String? validateSenha(String? senha) {
    if (senha == null || senha.isEmpty) {
      return "A senha não pode ser vazia";
    }
    if (senha.length < 8) {
      return "A senha deve conter pelo menos 8 caracteres";
    }
    if (senha.contains("+")) {
      return "A senha não pode conter o caractere '+'";
    }
    return null;
  }

  /// Ação ao clicar no botão "Entrar".
  void buttonEnterClick() {
    final nome = _nomeController.text.trim();
    final email = _emailController.text.trim();
    final senha = _senhaController.text.trim();
    final confirmarSenha = _confirmarSenhaController.text.trim();

    if (nome.isEmpty || email.isEmpty || senha.isEmpty || confirmarSenha.isEmpty) {
      _mostrarErro("Por favor, preencha todos os campos");
      return;
    }

    if (senha != confirmarSenha) {
      _mostrarErro("As senhas não coincidem");
      return;
    }

    print("Cadastro concluído: Nome: $nome, Email: $email");
    Navigator.pushReplacementNamed(context, '/homeWithNavBar');
  }

  void _mostrarErro(String mensagem) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Erro"),
        content: Text(mensagem),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }
}

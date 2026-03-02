import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login UI',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Controladores para capturar el texto de los inputs
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            // Logo o Imagen de Bienvenida
            children: [
              const SizedBox(height: 150),
              Container(
                height: 150,
                width: 150,
                child: Image.asset('assets/Logo de Login.png'),
              ),
               const SizedBox(height: 20),

              const Text(
                "¡Bienvenido!",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Ingresa tus datos para continuar",
                style: TextStyle(color: Colors.grey),
              ),

              const SizedBox(height: 50),

             
            
            
              // Campo de Email
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: "Correo Electrónico",
                  prefixIcon: const Icon(Icons.email_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Campo de Contraseña
              TextField(
                controller: _passwordController,
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  labelText: "Contraseña",
                  prefixIcon: const Icon(Icons.lock_outline),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              // Olvidé mi contraseña
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("¿Olvidaste tu contraseña?"),
                ),
              ),

              const SizedBox(height: 30),

              // Botón de Inicio de Sesión
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    debugPrint("Email: ${_emailController.text}");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 76, 214, 7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    "Iniciar Sesión",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
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
}

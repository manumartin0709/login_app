import 'package:flutter/material.dart';
import 'package:login_app/presentation/screens/home/home_screen.dart';
import 'package:login_app/widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {

  static const String name= 'login_screen';
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio de Sesión'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'Correo Electrónico'),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: passwordController,
                decoration: const InputDecoration(labelText: 'Contraseña'),
                obscureText: true,
              ),
              const SizedBox(height: 16),
              CustomButton(
                onPressed: () {
                  final email = emailController.text;
                  final password = passwordController.text;
                  if (email == password) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()),
                    );
                  } else {
                    showDialog(
                       context: context,
                       builder: (context) {
                         return AlertDialog(
                           title: const Text('Error de inicio de sesión'),
                           content: const Text('El usuario no coincide con la contraseña.'),
                           actions: [
                             TextButton(
                               onPressed: () {
                                 Navigator.of(context).pop(); // Cierra el diálogo
                               },
                               child: const Text('Aceptar'),
                             ),
                           ],
                         );
                        },
                    );
                    // Muestra un mensaje de error o realiza alguna otra acción.
                  }
                },
                text: 'Iniciar Sesión',
              ),
            ],
          ),
        ),
      ),
    );
  }
}


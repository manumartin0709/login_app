import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  static const String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página de inicio'),
      ),
      body: const Center(
        child: Text('¡Has iniciado sesión correctamente!'),
      ),
    );
  }
}
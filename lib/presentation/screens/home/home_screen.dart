import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:login_app/presentation/providers/user_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {

  static const String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<AppProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text(provider.user),
        actions:[
          IconButton(
          icon: const Icon(Icons.back_hand), 
          onPressed: () {
            
          },
        ),
        ] 
      ),
      body: const Center(
        child: Text('¡Has iniciado sesión correctamente!'),
      ),
    );
  }
}
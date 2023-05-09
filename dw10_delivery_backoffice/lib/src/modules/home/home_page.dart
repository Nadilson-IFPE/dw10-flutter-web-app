import 'package:flutter/material.dart';

import '../../core/env/env.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page - Dart Week 10 - Academia do Flutter'),
      ),
      body: Container(
          // Testar se o app está obtendo o valor da variável no arquivo .env
          // child: Text(Env.instance.get('backend_base_url')),
          ),
    );
  }
}

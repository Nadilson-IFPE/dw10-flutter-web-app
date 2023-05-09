import 'package:flutter/material.dart';

import '../../core/ui/helpers/loader.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with Loader {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page - Dart Week 10 - Academia do Flutter'),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        showLoader();
        await Future.delayed(const Duration(seconds: 2));
        hideLoader();
      }),
      body: Container(
          // Testar se o app está obtendo o valor da variável no arquivo .env
          // child: Text(Env.instance.get('backend_base_url')),
          ),
    );
  }
}

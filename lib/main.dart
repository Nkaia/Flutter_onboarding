import 'package:flutter/material.dart';

import 'pages/animacoes_pages.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lottie Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        // brightness: Brightness.light,
        primarySwatch: Colors.teal,
      ),
      home: AnimacoesPage(),
    );
  }
}

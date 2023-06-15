import 'package:flutter/material.dart';
import 'package:app_cotacao_moedas/pages/homepage.dart';
import 'package:app_cotacao_moedas/themes/my_theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: myTheme,
      home: const HomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'gastronomico_theme.dart';
import 'home.dart';

void main() {
  runApp(const Gastronomico());
}

class Gastronomico extends StatelessWidget {
  const Gastronomico({super.key});
  @override
  Widget build(BuildContext context) {
    final theme = GastronomicoTheme.dark();
    return MaterialApp(
      theme: theme,
      title: 'Gastronômico',
      home: const Home(),
    );
  }
}

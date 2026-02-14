import 'package:flutter/material.dart';
import 'Features/auth/presentation/views/login_view.dart';

void main() {
  runApp(const MoviesApp());
}

class MoviesApp extends StatelessWidget {
  const MoviesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: LoginView());
  }
}

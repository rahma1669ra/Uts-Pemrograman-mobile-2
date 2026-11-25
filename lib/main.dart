import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/book_provider.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => BookProvider(),
      child: const RuangBacaApp(),
    ),
  );
}

class RuangBacaApp extends StatelessWidget {
  const RuangBacaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RuangBaca',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1E293B)),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
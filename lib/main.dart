import 'package:bottom_navigation/bottom_nav/view/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'bottom_nav/controller/bottom_nav_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BottomNavProvider(),
      child: const MaterialApp(
        home: BottomNav(),
      ),
    );
  }
}

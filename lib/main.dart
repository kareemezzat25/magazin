import 'package:flutter/material.dart';
import 'package:magazin/home.dart';

void main() {
  runApp(MagazinApp());
}

class MagazinApp extends StatelessWidget {
  const MagazinApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

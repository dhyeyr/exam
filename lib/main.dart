
import 'package:exam/menu.dart';
import 'package:exam/shopping%20cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(
    MayApp(),
  );
}

class MayApp extends StatefulWidget {
  const MayApp({super.key});

  @override
  State<MayApp> createState() => _MayAppState();
}

class _MayAppState extends State<MayApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

     home: HomeScreen(),
    );
  }
}

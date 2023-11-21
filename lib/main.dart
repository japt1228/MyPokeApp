import 'package:flutter/material.dart';
import 'package:my_poke_app/Screens/login_screen.dart';


void main(){
  runApp(const MyPokeApp());
}

class MyPokeApp extends StatelessWidget {
  const MyPokeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
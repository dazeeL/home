import 'package:flutter/material.dart';
import 'package:flutter1/home_screen.dart';
import 'package:flutter1/login_screen.dart';
import 'penghitung_screen.dart';
import 'profil_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Edit Profile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:LoginScreen(),
      routes: {
      '/penghitung': (context) => PenghitungScreen(),
      '/profil': (context) => ProfilScreen(),
      '/home': (context) => HomeScreen(),
      },
    );
  }
}

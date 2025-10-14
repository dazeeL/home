import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'penghitung_screen.dart';
import 'profil_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text("HOME", style: GoogleFonts.rubik(color: const Color.fromRGBO(255, 135, 135, 1), fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/bg6.jpeg'), 
            fit: BoxFit.cover),
        ),
      
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Tombol ke Penghitung
            SizedBox(
              width: 220,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, "/penghitung");
                },
                icon: Icon(Icons.calculate),
                label: Text("Penghitung"),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  textStyle: TextStyle(fontSize: 18),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Tombol ke Profil
            SizedBox(
              width: 220,
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/profil');
                },
                icon: Icon(Icons.person),
                label: Text("Profil Saya"),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  textStyle: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),),
    );
  }
}



















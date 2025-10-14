import 'package:flutter/material.dart';
import 'profil_screen.dart';
import 'home_screen.dart';

class PenghitungScreen extends StatefulWidget {
  const PenghitungScreen({super.key});

  @override
  State<PenghitungScreen> createState() => _PenghitungScreenState();
}

class _PenghitungScreenState extends State<PenghitungScreen> {
  int nilai = 0;

  menghitung () { //INI NAMNYA FUNGSI
    setState(() {});
    nilai = nilai + 1;
    print("ini nilai = $nilai");
  } 

  pindahHalaman() {
    Navigator.of(context).push (
      MaterialPageRoute(builder: (_)=>ProfilScreen(),),);
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.greenAccent,
     appBar: AppBar(
        //APPBAR BUAT ATASSSSS
        leading: IconButton(
          icon: const Icon(Icons.navigate_before),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/home'); 
          },
        ),),
     body: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Hitung $nilai"), //NAMPILIN VARIABLE NILAI
          ElevatedButton(onPressed: (){
            menghitung();
          }, 
          child: Text("Hitung"),),

          SizedBox(height: 20,),
          ElevatedButton(onPressed: () {pindahHalaman();}, child: Text("Pindah Profile"))
        ],  
        ),
      ),
    );
  }
}
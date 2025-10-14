import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//BUAT RUNNING FLUTTER RUN, REFRESH LANGSUNG KETIK R DI TERMINAL

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        //APPBAR BUAT ATASSSSS
        leading: IconButton(
          icon: const Icon(Icons.navigate_before),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/home'); 
          },
        ),

        title: Text(
          "Profile",
          style: GoogleFonts.rubik(
            color: Colors.blueGrey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            //PAKE COLUMN BIAR ATAS BAWAH
            //BIAR FULL CENTER PENCET COLUMN ADA LAMPU KUNING)
            //COLUMN GANTI LIST VIEW BIAR CARD BISA DI SCROLL
            Center(
              child: Stack(
                children: [
                  // Foto profil
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage("asset/mingyu.jpeg"),
                  ),

                  // Icon + di pojok kanan bawah
                  Positioned(
                    bottom: 8, // jarak dari bawah
                    right: 8, // jarak dari kanan
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue, // warna background icon
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ), // biar rapih
                      ),
                      padding: EdgeInsets.all(8),
                      child: Icon(Icons.add, color: Colors.white, size: 20),
                    ),
                  ),
                ],
              ),
            ),

            Text(
              "KIM MINGYU",
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: const Color.fromRGBO(59, 59, 59, 1),
              ),
            ),
            Text(
              "mingyukim@gmail.com",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                color: const Color.fromRGBO(59, 59, 59, 1),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.home), Icon(Icons.favorite)],
            ),

            Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("Edit Profile"),
                subtitle: Text("edit"),
                trailing: Icon(Icons.navigate_next),
              ),
            ),

            Card(
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.navigate_next),
              ),
            ),

            Card(
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text("Setting"),
                trailing: Icon(Icons.navigate_next),
              ),
            ),

            Card(
              child: ListTile(
                leading: Icon(Icons.notifications),
                title: Text("Notification"),
                trailing: Icon(Icons.navigate_next),
              ),
            ),

            Card(
              child: ListTile(
                leading: Icon(Icons.brightness_2),
                title: Text("Dark Mode"),
                trailing: Icon(Icons.navigate_next),
              ),
            ),

            Card(
              child: ListTile(
                leading: Icon(Icons.https),
                title: Text("Change Password"),
                trailing: Icon(Icons.navigate_next),
              ),
            ),

            Card(
              child: ListTile(
                leading: Icon(Icons.pie_chart),
                title: Text("Graphic"),
                trailing: Icon(Icons.navigate_next),
              ),
            ),

            Card(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.logout),
                    Text(
                      "LOGOUT",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ); //BUAT TAMPILAN POLOSANN
  }
}

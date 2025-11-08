import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditProfilScreen extends StatefulWidget {
  final String nama;
  final String username;
  final String email;
  final String hobi;
  final String alamat;
  final String noHp;
  final Function(String, String, String, String, String, String) onSave;

  const EditProfilScreen({
    super.key,
    required this.nama,
    required this.username,
    required this.email,
    required this.hobi,
    required this.alamat,
    required this.noHp,
    required this.onSave,
  });

  @override
  State<EditProfilScreen> createState() => _EditProfilScreenState();
}

class _EditProfilScreenState extends State<EditProfilScreen> {
  late TextEditingController namaController;
  late TextEditingController usernameController;
  late TextEditingController emailController;
  late TextEditingController hobiController;
  late TextEditingController alamatController;
  late TextEditingController noHpController;

  @override
  void initState() {
    super.initState();
    namaController = TextEditingController(text: widget.nama);
    usernameController = TextEditingController(text: widget.username);
    emailController = TextEditingController(text: widget.email);
    hobiController = TextEditingController(text: widget.hobi);
    alamatController = TextEditingController(text: widget.alamat);
    noHpController = TextEditingController(text: widget.noHp);
  }

  @override
  void dispose() {
    // hapus controller biar gak leak
    namaController.dispose();
    usernameController.dispose();
    emailController.dispose();
    hobiController.dispose();
    alamatController.dispose();
    noHpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Edit Profile",
          style: GoogleFonts.rubik(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            TextField(
              controller: namaController,
              decoration: const InputDecoration(labelText: "Nama"),
            ),
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(labelText: "Username"),
            ),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(labelText: "Email"),
            ),
            TextField(
              controller: hobiController,
              decoration: const InputDecoration(labelText: "Tanggal Lahir"),
            ),
            TextField(
              controller: alamatController,
              decoration: const InputDecoration(labelText: "Bio"),
              maxLines: 3,
            ),
            TextField(
              controller: noHpController,
              decoration: const InputDecoration(labelText: "Lokasi"),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                widget.onSave(     //callback dari halaman Profil, TOMBOL SAVE (AMBIL DATA DARI texteditorcontroller)
                  namaController.text,
                  usernameController.text,
                  emailController.text,
                  hobiController.text,
                  alamatController.text,
                  noHpController.text,
                );
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                "Simpan",
                style: GoogleFonts.rubik(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

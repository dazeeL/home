import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen ({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState ();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailC = TextEditingController();
  final passC = TextEditingController();
  final name = TextEditingController();
  final address = TextEditingController();
  final nomor = TextEditingController();
  final _key = GlobalKey<FormState>();

  login () {
    if (_key.currentState!.validate()) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text("Login"),
      backgroundColor: const Color.fromARGB(255, 94, 49, 253),
      ),
     
      
      body: Container(
        padding: const EdgeInsets.all(8.0),
        
          child: Form (
            key: _key,
            child: Column(
              children: [

                TextFormField(
                  controller: name,
                  decoration: InputDecoration(
                    labelText: "Nama",
                    border:  OutlineInputBorder()
                  ),

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Nama tidak boleh kosong";
                    }
                  },
                ),

                SizedBox(height: 10,),
                TextFormField(
                  controller: emailC,
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder()
                  ),
                  validator: (value) {
        
                    if (value == null || value.isEmpty) {
                      return "Email tidak boleh kosong";
                    } else if (!value.contains("@")) {
                      return "Format salah, harus @gmail.com";
                    }
                  },

                ),

                SizedBox(height: 10,),
                TextFormField(
                  controller: passC,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border:  OutlineInputBorder()
                  ),

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "password tidak boleh kosong";
                    } else if (value.length <3) {
                      return "password harus lebih dari 3";
                    }
                  },
                ),

                SizedBox(height: 10,),
                TextFormField(
                  controller: address,
                  decoration: InputDecoration(
                    labelText: "Alamat",
                    border:  OutlineInputBorder()
                  ),

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Alamat tidak boleh kosong";
                    }
                  },
                ),

                SizedBox(height: 10,),

                TextFormField(
                  controller: nomor,
                  keyboardType: TextInputType.number, //INI BIAR INPUT NYA MODE ANGKA
                  decoration: InputDecoration(
                    labelText: "Nomor Handphone",
                    border:  OutlineInputBorder()
                  ),

                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Nomor tidak boleh kosong";
                    } else if (value.length <10 ) {
                      return "Nomor Hp harus lebih dari 10";
                    }
                    return null;
                  },
                ),

                SizedBox(height: 10,),

                TextButton(
  onPressed: () {
    if (_key.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          title: const Text("Berhasil!"),
          content: const Text("Pendaftaran kamu berhasil disimpan."),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Oke"),
            ),
          ],
        ),
      );
    }
  },
  child: const Text("Login"),
),

                
              ],
            ),)
        ),
      );
    
  }
}
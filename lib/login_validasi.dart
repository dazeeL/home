

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class LoginValidasiScreen extends StatefulWidget {
  const LoginValidasiScreen({super.key});

  @override
  State<LoginValidasiScreen> createState() => _LoginValidasiScreenState();
}

class _LoginValidasiScreenState extends State<LoginValidasiScreen> {
  final emailC = TextEditingController();
  final passC = TextEditingController();
  final _key = GlobalKey<FormState>(); //key untuk form

  login () {
    if (_key.currentState!.validate()){}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title : const Text("Login Validasi")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _key,
          child: Column(
            children: [
              TextFormField(
                controller: emailC,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder()),
                  validator: (value) {

                    if (value == null || value.isEmpty) {
                      return "email tidak boleh kosong";
                    } else if (!value.contains("@")) {
                      return "format salah, harus aaa@gmail.com";

                    }
                   },

                  ),
              SizedBox(height: 10,),
              TextFormField(
                controller: passC,
                obscureText: true, //INI BIAR PW HIDDEN
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder()),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "password tidak boleh kosong";
                    }
                   },
                  ),
              TextButton(onPressed: (){
                login();
              }, child: Text("Login"))
            ],),
        ),
      )
      );
  }
}
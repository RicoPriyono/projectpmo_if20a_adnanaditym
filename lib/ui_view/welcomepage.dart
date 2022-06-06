// Welcome Screen
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:projectpmo_if20a_adnanaditym/ui_view/login_daftar.dart';

class welcome extends StatefulWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  State<welcome> createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginDaftar()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Selamat datang di AXON MOTOR",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 20),
            Image.asset("assets/image/logo axon new.png", height: 200, width: 200),
            SizedBox(height: 20),
            Text(
              "The best choice's for your future",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:projectpmo_if20a_adnanaditym/ui_view/login_daftar.dart';

class WelcomePage extends StatefulWidget {
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 4), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginDaftar()));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellowAccent,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Welcome to AXON MOTOR",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white
            ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: Center(
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      width: 220,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/logo.png"))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            const Text('The best choice for your future',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}

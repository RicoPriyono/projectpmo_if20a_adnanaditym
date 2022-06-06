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
    Timer(Duration(seconds: 4), (){
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
            Text("Welcome to AXON MOTOR",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black
            ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Center(
                child: Column(
                  children: [
                    Container(
                      height: 60,
                      width: 220,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/image/axon.png"))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            Text('The best choice for your future',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '/ui_view/login.dart';
import '/ui_view/signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Register',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/logo.png",
              width: 350,
              height : 200,
            ),
            Image.asset(
              "assets/images/undraw.png",
              width: 250,
              height : 100,
            ),
            // Icon(Icons.android, color: Colors.white, size: 45,),
            SizedBox(height: 30,),
            Text("Selamat datang di AXON MOTOR !",
                style: TextStyle(color: Colors.white, fontSize: 22)),
            SizedBox(height: 10,),
            Text("The best choice's for your future",
              style: TextStyle(color: Colors.white, fontSize: 18),),
            // Text("maters to you",
            //   style: TextStyle(color: Colors.white, fontSize: 18),),
            SizedBox(height: 15,),
            MaterialButton(
              minWidth: 210,
              color: Colors.white,
              textColor: Colors.lightBlue,
              child: Text("Sign Up",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
              },
            ),
            MaterialButton(
              minWidth: 210,
              color: Colors.white,
              textColor: Colors.lightBlue,
              child: Text("Log in",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
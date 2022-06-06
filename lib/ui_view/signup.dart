import 'package:flutter/material.dart';
import '/ui_view/Login.dart';

void main() => runApp(SignUp());


class SignUp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/images/register.png",
              width: 200,
              height : 150,
            ),
            Text("Masukkan data diri anda !",
                style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
            Container(
              padding: EdgeInsets.all(10),
              width: 300,
              // color: Colors.black87,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Username",
                  hintStyle: TextStyle(color: Colors.white),
                  border: UnderlineInputBorder(),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white54,
                      width: 3.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(10),
              width: 300,
              // color: Colors.black87,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.white),
                  border: UnderlineInputBorder(),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white54,
                      width: 3.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(10),
              width: 300,
              // color: Colors.black87,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.white),
                  border: UnderlineInputBorder(),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white54,
                      width: 3.0,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            MaterialButton(
              padding: EdgeInsets.all(20),
              minWidth: 250,
              child: Text("REGISTER", style: TextStyle(color: Colors.black87, fontSize: 15, fontWeight: FontWeight.bold),),
              color: Colors.green,
              onPressed: (){},
            ),
            TextButton(
              child: Text("Already registered? Login me", style: TextStyle(color: Colors.white)),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
              },
            )
          ],
        ),
      ),
    );
  }
}
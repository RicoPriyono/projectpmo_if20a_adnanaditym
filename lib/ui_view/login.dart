import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/ui_view/signup.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(Login());

class Login extends StatelessWidget {
  TextEditingController controllerusername = TextEditingController();
  TextEditingController controllerpassword = TextEditingController();


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Login",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              SizedBox(height: 20),
              Image.asset(
                "assets/images/male.png",
                width: 130,
                height: 150,
              ),
              SizedBox(
                height: 20
              ),
              Text("Silahkan masukkan nama dan password anda !",
                  style: TextStyle(color: Colors.white, fontSize: 12)),
              Container(
                padding: EdgeInsets.all(20),
                width: 300,
                // color: Colors.white,
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
                  controller: controllerusername,
                ),
              ),
              SizedBox(
                height: 1.0,
              ),
              Container(
                padding: EdgeInsets.all(20),
                width: 300,
                // color: Colors.white,
                child: TextFormField(
                  obscureText: true,
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
                  controller: controllerpassword,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                padding: EdgeInsets.all(20),
                minWidth: 340,
                child: Text(
                  "Log in",
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                color: Colors.white12,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {
                  if (controllerusername.text.trim()==""){
                    Fluttertoast.showToast(
                        msg: "The username field is required",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 20.0);
                  } else if (controllerpassword.text.trim()==""){
                    Fluttertoast.showToast(
                        msg: "The password field is required",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 20.0);
                  }
                },
              ),
              TextButton(
                child: Text(
                  "Not a member? Signup now",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

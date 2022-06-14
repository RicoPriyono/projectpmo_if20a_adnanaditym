import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/ui_view/signup.dart';

void main() => runApp(Login());

class Login extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/images/user.png",
                width: 130,
                height: 150,
              ),
              const Text("Silahkan masukkan nama dan password anda !",
                  style: TextStyle(color: Colors.white, fontSize: 12)),
              Container(
                padding: const EdgeInsets.all(20),
                width: 300,
                // color: Colors.white,
                child: TextFormField(
                  decoration: const InputDecoration(
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
              const SizedBox(
                height: 1.0,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                width: 300,
                // color: Colors.white,
                child: TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
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
              const SizedBox(
                height: 10,
              ),
              MaterialButton(
                padding: const EdgeInsets.all(20),
                minWidth: 340,
                child: const Text(
                  "Log in",
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                color: Colors.white12,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                onPressed: () {},
              ),
              TextButton(
                child: const Text(
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

import 'package:flutter/material.dart';
import 'package:projectpmo_if20a_adnanaditym/ui_view/login.dart';


void main() => runApp(SignUp());


class SignUp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                height: 500,
                width: 340,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        "assets/image/regist.png",
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
                        ),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        padding: EdgeInsets.all(10),
                        width: 300,
                        // color: Colors.black87,
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Reenter Password",
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
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              MaterialButton(
                padding: EdgeInsets.all(20),
                minWidth: 340,
                child: Text("REGISTER", style: TextStyle(color: Colors.black87, fontSize: 15, fontWeight: FontWeight.bold),),
                color: Colors.greenAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ) ,
                onPressed: () async {},
              ),
              TextButton(
                child: Text("Already registered? Login me", style: TextStyle(color: Colors.black)),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}



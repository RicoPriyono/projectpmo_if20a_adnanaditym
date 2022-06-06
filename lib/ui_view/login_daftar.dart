import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectpmo_if20a_adnanaditym/ui_view/login.dart';
import 'package:projectpmo_if20a_adnanaditym/ui_view/signup.dart';



class LoginDaftar extends StatefulWidget {
  const LoginDaftar({Key? key}) : super(key: key);

  @override
  State<LoginDaftar> createState() => _LoginDaftarState();
}

class _LoginDaftarState extends State<LoginDaftar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(

        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 75),
                height: 60,
                width: 220,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/image/logo.png"))
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                  "Selamat Datang di AXON MOTOR \n The best choice's for your future",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,

                  ),
                  textAlign: TextAlign.center),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20 ),
                height: 80,
                width: 134,
                decoration : BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/image/masuk.png"))
                ),

              ),
              Text(
                  "Silahkan pilih login, \n jika anda sudah memiliki akun",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center),
              Container(
                margin: EdgeInsets.only(top: 10,bottom: 20),
                width: 256,
                height: 38,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:MaterialStateProperty.all(Colors.white)
                  ),
                  child: Text("LOGIN",
                    style: TextStyle(
                        color: Colors.black
                    ),),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>Login()));
                  },
                ),
              ),
              Text(
                  "atau, \n silahkan daftar jika anda belum memiliki akun",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center),
              Container(
                margin: EdgeInsets.only(top: 10,bottom: 50),
                width: 256,
                height: 38,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white)
                  ),
                  child: Text("DAFTAR",
                    style: TextStyle(
                        color: Colors.black
                    ),),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>SignUp()));
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 105,
                    height: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/image/ahm.png"))
                    ),
                  ),
                  Container(
                    width: 105,
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/image/astra.png"))
                    ),
                  ),
                  Container(
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/image/honda.png"))
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projectpmo_if20a_adnanaditym/ui_view/data_konsumen.dart';
import 'package:projectpmo_if20a_adnanaditym/ui_view/login_daftar.dart';


class dashboarduser extends StatefulWidget {
  const dashboarduser({Key? key}) : super(key: key);

  @override
  State<dashboarduser> createState() => _dashboarduserState();
}

class _dashboarduserState extends State<dashboarduser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30, right: 250),
              height: 55,
              width: 120,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/logo.png"))),
            ),
            Container(
              margin : EdgeInsets.only(top : 20, left: 250),
              height : 55,
              width : 120,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                      AssetImage("assets/images/Rectangle.png"))),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 250),
              height: 55,
              width: 120,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                      AssetImage("assets/images/male.png"))),
            ),
            SizedBox(
              height: 80,
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 20),
                    width: 256,
                    height: 70,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.white)),
                      child: Text(
                        "PENJUALAN",
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Data_Konsumen()));
                      },
                    ),
                  ),
                  SizedBox(height: 50),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 60),
                    width: 256,
                    height: 70,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStateProperty.all(Colors.white)),
                      child: Text(
                        "TENTANG KAMI",
                        style: TextStyle(color: Colors.black),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Data_Konsumen()));
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 100,
              height: 70,
              margin: EdgeInsets.only(left: 280, top: 100),
              child: InkWell(
                child: Container(
                  child: Image.asset("assets/images/exit.png"),
                ),
                onTap: () {
                  Navigator.push
                    (context, MaterialPageRoute(
                      builder: (context) => LoginDaftar()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

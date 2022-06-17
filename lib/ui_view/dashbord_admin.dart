import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projectpmo_if20a_adnanaditym/ui_view/data_konsumen.dart';

class DashbordAdmin extends StatefulWidget {
  const DashbordAdmin({Key? key}) : super(key: key);

  @override
  State<DashbordAdmin> createState() => _DashbordAdminState();
}

class _DashbordAdminState extends State<DashbordAdmin> {
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
              margin: EdgeInsets.only(top: 20, left: 250),
              height: 55,
              width: 120,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image:
                          AssetImage("assets/images/undraw_male_avatar.png"))),
            ),
            SizedBox(
              height: 80,
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.only(top: 30, bottom: 20),
                    width: 256,
                    height: 70,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white)),
                      child: Text(
                        "INPUT DATA",
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
                        "LAPORAN PENJUALAN",
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
            )
          ],
        ),
      ),
    );
  }
}

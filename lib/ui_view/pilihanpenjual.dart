import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    home: Pilihan_Jual(),
  ));
}

class Pilihan_Jual extends StatefulWidget {
  @override
  PilihanJualState createState() => Pilihan_Jual();
}

class Pilihan_Jual extends StatefulWidget {
  @override
  widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text(""),
        backgroundColor: Colors.grey[700],
      ),
      backgroundColor: Colors.grey[100],
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
        Card(
        margin: EdgeInsets.all(8.0),
        child: InkWell(
          onTap: (){},
          splashcolor: Colors.grey,
          child: Center(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <widget>[
            Container(
            margin: EdgeInsets.only(top: 25, right: 200),
            height: 55,
            width: 120,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/motornew.png"))),
          ),
          Container(
            margin: EdgeInsets.only(top: 25, left: 200),
            height: 55,
            width: 120,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image:
                    AssetImage("assets/images/partnew.png"))),
            ],
          ),
        ),
      ),
    ),
    ],
    ),
    ),
    );
  }
}
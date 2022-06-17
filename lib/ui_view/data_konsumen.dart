import 'package:flutter/material.dart';


void main() => runApp(Data_Konsumen());


class Data_Konsumen extends StatelessWidget {
  TextEditingController namaController = TextEditingController();
  TextEditingController alamatController = TextEditingController();
  TextEditingController notelpController = TextEditingController();
  TextEditingController namabarangController = TextEditingController();
  TextEditingController idbarangController = TextEditingController();
  TextEditingController jumlahpesananController = TextEditingController();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 70),
                height: 600,
                width: 500,
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text("DATA KONSUMEN",
                          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                      const Text("Periksa Kembali Pesanan Anda!",
                          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: 400,
                        // color: Colors.black87,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Nama",
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
                      const SizedBox(height: 10,),
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: 400,
                        // color: Colors.black87,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Alamat",
                            hintStyle: TextStyle(color: Colors.white),
                            border: UnderlineInputBorder(),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white54,
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: 400,
                        // color: Colors.black87,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: "No Telp",
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
                      const SizedBox(height: 10,),
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: 400,
                        // color: Colors.black87,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Nama Barang",
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
                      const SizedBox(height: 10,),
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: 400,
                        // color: Colors.black87,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: "ID Barang",
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
                      const SizedBox(height: 10,),
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: 400,
                        // color: Colors.black87,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Jumlah Pesanan",
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
              const SizedBox(height: 20,),
              MaterialButton(
                padding: const EdgeInsets.all(20),
                minWidth: 500,
                child: Text("Confirm", style: TextStyle(color: Colors.black87, fontSize: 30, fontWeight: FontWeight.bold),),
                color: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ) ,
                onPressed: () async {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}



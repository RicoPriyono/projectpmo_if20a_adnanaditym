import 'package:flutter/material.dart';
import 'detail_datatransaksi.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner:false,
    title: "Data Transaksi",
    home: BelajarForm(),
  ));
}
class BelajarForm extends StatefulWidget {
  @override
  _BelajarFormState createState() => _BelajarFormState();
}
class _BelajarFormState extends State<BelajarForm> {
  final _formKey = GlobalKey<FormState>();
  final no_transaksi = TextEditingController();
  final id_barang = TextEditingController();
  final nama_barang = TextEditingController();
  final jumlah_barang = TextEditingController();
  final metode_pembayaran = TextEditingController();
  final total = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data Transaksi"),
        actions:[
          BackButton(
            onPressed: (){
            },
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: Container(
          color : Colors.brown.shade200,
          margin: const EdgeInsets.fromLTRB(20, 30, 20, 30),
          padding: const EdgeInsets.all(20.0),
          child: Column(
            //agar semua widget diposisi kiri
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //textformfield digunakan untuk membuat widget form
              TextFormField(
                //memberikan identitas untuk setiap form
                controller: no_transaksi,
                decoration: const InputDecoration(
                  hintText: "Masukan no transaksi",
                  labelText: "No Transaksi",
                ),
                //memberikan validasi jika form kosong
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'No transaksi tidak boleh kosong';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: id_barang ,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: const InputDecoration(
                    labelText: 'Id Barang',
                    hintText: 'Masukan Id Barang'
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Id Barang tidak boleh kosong';
                  }
                  return null;
                },
              ),

              const SizedBox(height: 10),
              TextFormField(
                controller: nama_barang,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: const InputDecoration(
                    labelText: 'Nama Barang',
                    hintText: 'Masukkan Nama Barang'
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Nama Barang tidak boleh kosong';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: jumlah_barang,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: const InputDecoration(
                    labelText: 'Jumlah Barang',
                    hintText: 'Masukkan Jumlah Barang'
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Jumlah Barang tidak boleh kosong';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: metode_pembayaran,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: const InputDecoration(
                  labelText: 'Metode Pembayaran',
                  // hintText: 'Masukkan Jumlah Barang'
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Metode Pembayaran tidak boleh kosong';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: total,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: const InputDecoration(
                  labelText: 'Total',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Total Pembayaran tidak boleh kosong';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                child: const Text(
                  "BAYAR",
                  style: const TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => DetailPage(no_transaksi: no_transaksi.text, id_barang: id_barang.text,
                                nama_barang :nama_barang.text, jumlah_barang:jumlah_barang.text,metode_pembayaran:metode_pembayaran.text,
                                total:total.text )
                          //
                        )
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
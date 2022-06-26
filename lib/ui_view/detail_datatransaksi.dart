import 'package:flutter/material.dart';


class DetailPage extends StatelessWidget {

  DetailPage({required this.no_transaksi, required this.id_barang,required this.nama_barang,required this.jumlah_barang,
    required this.metode_pembayaran,required this.total});

  String no_transaksi;
  String id_barang;
  String nama_barang;
  String jumlah_barang;
  String metode_pembayaran;
  String total;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(no_transaksi),
              Text(id_barang),
              Text(nama_barang),
              Text(jumlah_barang),
              Text(metode_pembayaran),
              Text(total),
            ],
          )
      ),
    );
  }
}
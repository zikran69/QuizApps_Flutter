import 'package:flutter/material.dart';

class Hasil extends StatelessWidget {
  // const Hasil({Key key}) : super(key: key);
  int totalSkor;
  Function resetKuis;

  Hasil(this.totalSkor, this.resetKuis);
  // Getter
  String get hasilText {
    String hasil = 'Anda Berhasil';
    if (totalSkor <= 8) {
      hasil = 'Anda Hebat Sekali!';
    } else if (totalSkor <= 12) {
      hasil = 'Anda Sedikit Jahat!';
    } else if (totalSkor <= 16) {
      hasil = 'Anda Agaka Aneh!';
    } else {
      hasil = 'Anda Sangat Jahat!';
    }
    return hasil;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            hasilText,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: resetKuis,
            child: Text('Ulangi'),
            style: TextButton.styleFrom(primary: Colors.blue),
          ),
        ],
      ),
    );
  }
}

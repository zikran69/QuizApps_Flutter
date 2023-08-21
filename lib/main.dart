import 'package:flutter/material.dart';

import './kuis.dart';
import './hasil.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // const MyApp({Key key}) : super(key: key);
  var _soalindex = 0;
  var totalSkor = 0;

  var pertanyaan = [
    {
      'pertanyaan': 'tempat apa yang akan anda kunjungi?',
      'jawaban': [
        {'teks': 'Pegunungan', 'skor': 10},
        {'teks': 'Pantai', 'skor': 5},
        {'teks': 'Mall', 'skor': 3},
        {'teks': 'Hutan', 'skor': 1},
      ],
    },
    {
      'pertanyaan': 'Apa Warna Kesukaan Anda?',
      'jawaban': [
        {'teks': 'Merah', 'skor': 3},
        {'teks': 'Biru', 'skor': 11},
        {'teks': 'Hijau', 'skor': 5},
        {'teks': 'Hitam', 'skor': 9},
      ],
    },
    {
      'pertanyaan': 'Apa Hobby Anda?',
      'jawaban': [
        {'teks': 'Sepakbola', 'skor': 1},
        {'teks': 'Basket', 'skor': 1},
        {'teks': 'Berenang', 'skor': 1},
        {'teks': 'Ngoding', 'skor': 1},
      ],
    },
  ];

  void resetKuis() {
    setState(() {
      _soalindex = 0;
      totalSkor = 0;
    });
  }

  void _jawaban(int skor) {
    // print('tombol sudah di tekan!');
    totalSkor = totalSkor + skor;
    setState(() {
      _soalindex += 1;
    });
    if (_soalindex < pertanyaan.length) {
      print('masih ada soal berikutnya!');
    } else {
      print('Masih ada soal berikutnya!');
    }

    print(_soalindex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aplikasi Pertama Latihan'),
        ),
        body: _soalindex < pertanyaan.length
            ? Kuis(
                jawaban: _jawaban,
                pertanyaan: pertanyaan,
                soalIndex: _soalindex,
              )
            : Hasil(totalSkor, resetKuis),
      ),
    );
  }
}

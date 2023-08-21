import 'package:flutter/material.dart';

class Jawaban extends StatelessWidget {
  // const MyWidget({Key key}) : super(key: key);
  Function handlepilih;
  String jawabanText;

  Jawaban(this.handlepilih, this.jawabanText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: handlepilih,
        style: ElevatedButton.styleFrom(primary: Colors.blue),
        child: Text(jawabanText),
      ),
    );
  }
}

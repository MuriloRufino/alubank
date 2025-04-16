import 'package:alubank/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Desafio1());
}

class Desafio1 extends StatelessWidget {
  const Desafio1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Desafio 1',
        home: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 80.0, 16.0, 16.0),child: Text.rich(TextSpan(style: TextStyle(color: Colors.white, fontSize:16),
            children: <TextSpan>[
              TextSpan(
                  text: 'Oie'),
              TextSpan(
                  text: ', mundo Flutter',
                  style: TextStyle(fontWeight: FontWeight.normal, fontStyle: FontStyle.italic))
            ]))));
  }
}

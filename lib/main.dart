import 'package:alubank/screens/home.dart';
import 'package:alubank/themes/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:alubank/exercícios/Desafio1.dart';
void main() {
  runApp(const AluBank());
}

class AluBank extends StatelessWidget {
const AluBank({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(title: "AluBank", theme: myTheme, home: Home());
  }
}
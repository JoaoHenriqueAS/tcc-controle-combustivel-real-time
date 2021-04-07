import 'package:app_tcc/LoginPage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(TCC());
}

class TCC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TCC',
      theme: ThemeData(primarySwatch: Colors.green),
      home: LoginPage(),

    );
  }
}




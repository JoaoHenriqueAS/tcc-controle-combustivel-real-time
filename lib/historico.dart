import 'package:flutter/material.dart';
import 'package:tcc_rascunho/LoginPage.dart';

class historico extends StatefulWidget {
  @override
  _historicoState createState() => _historicoState();
}

class _historicoState extends State<historico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Histórico"),
        centerTitle: true,
        backgroundColor: Colors.green[800],
        actions: [
          IconButton(icon: Icon(Icons.logout),
            onPressed:() {
              Navigator.push(
                  context, MaterialPageRoute(
                  builder: (BuildContext context) => LoginPage()));
            },
          )
        ],
      ),

      body: ,

    );
  }
}

import 'package:flutter/material.dart';
import 'package:app_tcc/Home.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.local_gas_station, size: 120.0, color:Colors.lightGreenAccent),
                TextFormField(
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  style: new TextStyle(color: Colors.white, fontSize: 25),
                  decoration: InputDecoration(
                    labelText: "Seu nome",
                    labelStyle: TextStyle(color: Colors.white)
                  ),
                ),
                Divider(),

                ButtonTheme(
                  height: 50.0,
                  child: RaisedButton(
                    onPressed: () => {
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (BuildContext context) => Home()))
                    },
                    child:  Text(
                      "Entrar",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    color: Colors.white,
                  ),
                )

              ],
            ),
          ),
        )

    );
  }
}

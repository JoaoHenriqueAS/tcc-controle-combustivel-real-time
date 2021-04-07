import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(
      home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Controle de Combustível"),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          IconButton(icon: Icon(Icons.refresh),
          onPressed:() {}, ),

          IconButton(icon: Icon(Icons.logout),
            onPressed:() {}, )
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(Icons.person_outline, size: 120.0, color:Colors.deepOrange),
          Center(
            child: Container(
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 30,
                crossAxisSpacing: 30,
                padding:
                EdgeInsets.only(top: 20, left: 30, right: 30, bottom: 40),

                children: [

                  Card(
                    color: Colors.deepOrange[300],
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Icon(Icons.local_gas_station, size: 35.0, color:Colors.black),
                          Text("Mostrador de combustível", textAlign: TextAlign.center),
                          Text("     teste    ", textAlign: TextAlign.center),
                          Text("50 Litros", textAlign: TextAlign.center)
                        ],
                      ),
                    ),
                  ),

                  Card(
                    color: Colors.deepOrange[300],
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Icon(Icons.battery_charging_full, size: 35.0, color:Colors.black),
                          Text("Mostrador de bateria", textAlign: TextAlign.center),
                          Text("         ", textAlign: TextAlign.center),
                          Text("90% de Bateria", textAlign: TextAlign.center)
                        ],
                      ),
                    ),
                  ),

                  Card(
                    color: Colors.deepOrange[300],
                    child: Container(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Icon(Icons.menu_book, size: 35.0, color:Colors.black),
                          Text("Histórico de consumo", textAlign: TextAlign.center),
                          Text("              ", textAlign: TextAlign.center),
                          Text("Banco de dados", textAlign: TextAlign.center)
                        ],
                      ),
                    ),
                  )

                ],

              ),
            ),
          )

        ],
      ),

    );
  }
}

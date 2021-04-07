import 'package:flutter/material.dart';
import 'package:tcc_rascunho/historico.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        centerTitle: true,
        backgroundColor: Colors.green[800],
        actions: [
          IconButton(icon: Icon(Icons.refresh),
            onPressed:() {}, ),

          IconButton(icon: Icon(Icons.logout),
            onPressed:() {
              Navigator.pop(
                  context, MaterialPageRoute(
                  builder: (BuildContext context) => Home()));
            },
          )
        ],
      ),
      backgroundColor: Colors.green,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Icon(Icons.local_gas_station, size: 120.0, color:Colors.lightGreenAccent),
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
                    color: Colors.green[800],
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Icon(Icons.local_gas_station, size: 50.0, color:Colors.white),
                          Divider(),
                          Text("Combustível")
                        ],
                      ),
                    ),
                  ),

                  Card(
                    color: Colors.green[800],
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Icon(Icons.battery_charging_full, size: 50.0, color:Colors.white),
                          Divider(),
                          Text("Bateria")
                        ],
                      ),
                    ),
                  ),

                  Card(
                    color: Colors.green[800],
                    child: Container(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Icon(Icons.menu_book, size: 50.0, color:Colors.white),
                          RaisedButton(
                              onPressed: () => {
                                Navigator.push(
                                    context, MaterialPageRoute(
                                    builder: (BuildContext context) => historico()))
                              },
                              child: Text("Histórico")
                          ),
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



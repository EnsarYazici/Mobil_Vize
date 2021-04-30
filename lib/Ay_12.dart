import 'package:flutter/material.dart';
import 'package:mobil_programlama_vizeprojesi/Aylar.dart';
//import 'package:mobil_programlama_vizeprojesi/anaSayfa.dart';

class Ay_12 extends StatefulWidget {
  @override
  _Ay_12State createState() => _Ay_12State();
}

class _Ay_12State extends State<Ay_12> {
  @override
  Widget build(BuildContext context) {
    Aylist V_ayList = ModalRoute.of(context).settings.arguments;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(8.0),
                    color: Colors.green,
                  ),
                  child: Center(child: Text(V_ayList.Liste[11])),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton(
                    child: Center(child: Text("Ana Sayfa")),
                    onPressed: () {
                      Navigator.pushNamed(context, "/");
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

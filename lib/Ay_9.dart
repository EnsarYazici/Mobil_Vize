import 'package:flutter/material.dart';
import 'package:mobil_programlama_vizeprojesi/Aylar.dart';
//import 'package:mobil_programlama_vizeprojesi/anaSayfa.dart';

class Ay_9 extends StatefulWidget {
  @override
  _Ay_9State createState() => _Ay_9State();
}

class _Ay_9State extends State<Ay_9> {
  @override
  Widget build(BuildContext context) {
    Aylist V_ayList = ModalRoute.of(context).settings.arguments;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 500,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(8.0),
                    color: Colors.green,
                  ),
                  child: Center(child: Text(V_ayList.Liste[8])),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FloatingActionButton(
                    child: Text("Ana Sayfa"),
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
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobil_programlama_vizeprojesi/Ay_1.dart';
import 'package:mobil_programlama_vizeprojesi/Ay_10.dart';
import 'package:mobil_programlama_vizeprojesi/Ay_11.dart';
import 'package:mobil_programlama_vizeprojesi/Ay_12.dart';
import 'package:mobil_programlama_vizeprojesi/Ay_2.dart';
import 'package:mobil_programlama_vizeprojesi/Ay_3.dart';
import 'package:mobil_programlama_vizeprojesi/Ay_4.dart';
import 'package:mobil_programlama_vizeprojesi/Ay_5.dart';
import 'package:mobil_programlama_vizeprojesi/Ay_6.dart';
import 'package:mobil_programlama_vizeprojesi/Ay_7.dart';
import 'package:mobil_programlama_vizeprojesi/Ay_8.dart';
import 'package:mobil_programlama_vizeprojesi/Ay_9.dart';
import 'package:mobil_programlama_vizeprojesi/Aylar.dart';
import 'package:mobil_programlama_vizeprojesi/anaSayfa.dart';
import 'package:mobil_programlama_vizeprojesi/hakkinda.dart';

class Uygulama extends StatefulWidget {
  @override
  _UygulamaState createState() => _UygulamaState();
}

class _UygulamaState extends State<Uygulama> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/":(context) => anaSayfa(),
        "/Aylar":(context) => Aylar(),
        "/Ay_1":(context) => Ay_1(),
        "/Ay_2":(context) => Ay_2(),
        "/Ay_3":(context) => Ay_3(),
        "/Ay_4":(context) => Ay_4(),
        "/Ay_5":(context) => Ay_5(),
        "/Ay_6":(context) => Ay_6(),
        "/Ay_7":(context) => Ay_7(),
        "/Ay_8":(context) => Ay_8(),
        "/Ay_9":(context) => Ay_9(),
        "/Ay_10":(context) => Ay_10(),
        "/Ay_11":(context) => Ay_11(),
        "/Ay_12":(context) => Ay_12(),
        "/hakkinda":(context) => hakkinda(),
      },
    );
  }
}

/*
class anaSayfa extends StatefulWidget {
  @override
  _anaSayfaState createState() => _anaSayfaState();
}

class _anaSayfaState extends State<anaSayfa> {
  TextEditingController inputcontroller0 = new TextEditingController();
  TextEditingController inputcontroller1 = new TextEditingController();
  @override
  Widget build(BuildContext context) {

    var baslangicParasi;
    var yuzde;
    var depo = 0.0;
    List<String>AyList = ["0","0","0","0","0","0","0","0","0","0","0","0"];



    //print(AyList[0][0]);

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(8.0),color: Colors.green,),

                  width: 200,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(hintText: "Başlangıç Parası"),
                    controller: inputcontroller0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(8.0),color: Colors.green,),

                    width: 200,
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(hintText: "Aylık % Kazanç"),
                      controller: inputcontroller1,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/Aylar");
                    setState(() {
                      baslangicParasi = double.parse(inputcontroller0.text);
                      yuzde = double.parse(inputcontroller1.text);
                      for (var i = 1; i < 13; i++) {
                        depo = baslangicParasi + (baslangicParasi * yuzde / 100);
                        var aylik = depo - baslangicParasi;

                        AyList[i - 1] = "$i. Ay, Baslangic Parasi $baslangicParasi TL \n$i. Ay, Ay Sonu Toplam Para : $depo TL \n$i. Ay, Aylik Kazanc : $aylik TL";
                        //AyList[i - 1] = "$i. Ay, Ay Sonu Toplam Para : $depo TL";
                        //AyList[i - 1] = "$i. Ay, Aylik Kazanc : $aylik TL";

                        baslangicParasi = depo;
                      }
                      print(AyList[1]);
                    });
                  },
                  child: Text("Kaydet"),
                ),
              ),
              //Text(AyList.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
*/
/*
class Aylar extends StatefulWidget {
  @override
  _AylarState createState() => _AylarState();
}

class _AylarState extends State<Aylar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[850],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.lightGreen[50]),
                    //margin: EdgeInsets.fromLTRB(200, 10, 75, 10), // dışa mesafe
                    padding: EdgeInsets.all(40.0), // içe mesafe
                    child: TextButton(
                      //highlightColor: Colors.grey[850],
                      //splashColor: Colors.cyanAccent,
                      onPressed: () {
                        setState(() {
                          return anaSayfa();
                        });
                        //print(AyList);
                      },
                      child: Text("1.Ay Sonuçları"),
                    ),
                    //color: Colors.green[900],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.green[50]),
                    //margin: EdgeInsets.fromLTRB(100, 300, 300, 10), // dışa mesafe
                    padding: EdgeInsets.all(40.0), // içe mesafe
                    child: TextButton(
                      //highlightColor: Colors.grey[850],
                      //splashColor: Colors.cyanAccent,
                      onPressed: () {
                        print("butona basıldı");
                      },
                      child: Text("2.Ay Sonuçları"),
                    ),
                    //color: Colors.green[800],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.lightGreen[100]),
                    //margin: EdgeInsets.fromLTRB(200, 10, 75, 10), // dışa mesafe
                    padding: EdgeInsets.all(40.0), // içe mesafe
                    child: TextButton(
                      //highlightColor: Colors.grey[850],
                      //splashColor: Colors.cyanAccent,
                      onPressed: () {
                        print("butona basıldı");
                      },
                      child: Text("3.Ay Sonuçları"),
                    ),
                    //color: Colors.green[700],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.green[100]),
                    //margin: EdgeInsets.fromLTRB(200, 10, 75, 10), // dışa mesafe
                    padding: EdgeInsets.all(40.0), // içe mesafe
                    child: TextButton(
                      //highlightColor: Colors.grey[850],
                      //splashColor: Colors.cyanAccent,
                      onPressed: () {
                        print("butona basıldı");
                      },
                      child: Text("4.Ay Sonuçları"),
                    ),
                    //color: Colors.green[900],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.green[200]),
                    //margin: EdgeInsets.fromLTRB(100, 300, 300, 10), // dışa mesafe
                    padding: EdgeInsets.all(40.0), // içe mesafe
                    child: TextButton(
                      //highlightColor: Colors.grey[850],
                      //splashColor: Colors.cyanAccent,
                      onPressed: () {
                        print("butona basıldı");
                      },
                      child: Text("5.Ay Sonuçları"),
                    ),
                    //color: Colors.green[800],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.green[300]),
                    //margin: EdgeInsets.fromLTRB(200, 10, 75, 10), // dışa mesafe
                    padding: EdgeInsets.all(40.0), // içe mesafe
                    child: TextButton(
                      //highlightColor: Colors.grey[850],
                      //splashColor: Colors.cyanAccent,
                      onPressed: () {
                        print("butona basıldı");
                      },
                      child: Text("6.Ay Sonuçları"),
                    ),
                    //color: Colors.green[700],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.green[400]),
                    //margin: EdgeInsets.fromLTRB(200, 10, 75, 10), // dışa mesafe
                    padding: EdgeInsets.all(40.0), // içe mesafe
                    child: TextButton(
                      //highlightColor: Colors.grey[850],
                      //splashColor: Colors.cyanAccent,
                      onPressed: () {
                        print("butona basıldı");
                      },
                      child: Text("7.Ay Sonuçları"),
                    ),
                    //color: Colors.green[900],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.green),
                    //margin: EdgeInsets.fromLTRB(100, 300, 300, 10), // dışa mesafe
                    padding: EdgeInsets.all(40.0), // içe mesafe
                    child: TextButton(
                      //highlightColor: Colors.grey[850],
                      //splashColor: Colors.cyanAccent,
                      onPressed: () {
                        print("butona basıldı");
                      },
                      child: Text("8.Ay Sonuçları"),
                    ),
                    //color: Colors.green[800],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.green[600]),
                    //margin: EdgeInsets.fromLTRB(200, 10, 75, 10), // dışa mesafe
                    padding: EdgeInsets.all(40.0), // içe mesafe
                    child: TextButton(
                      //highlightColor: Colors.grey[850],
                      //splashColor: Colors.cyanAccent,
                      onPressed: () {
                        print("butona basıldı");
                      },
                      child: Text("9.Ay Sonuçları"),
                    ),
                    //color: Colors.green[700],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.green[700]),
                    //margin: EdgeInsets.fromLTRB(200, 10, 75, 10), // dışa mesafe
                    padding: EdgeInsets.all(40.0), // içe mesafe
                    child: TextButton(
                      //highlightColor: Colors.grey[850],
                      //splashColor: Colors.cyanAccent,
                      onPressed: () {
                        print("butona basıldı");
                      },
                      child: Text("10.Ay Sonuçları"),
                    ),
                    //color: Colors.green[900],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.green[800]),
                    //margin: EdgeInsets.fromLTRB(100, 300, 300, 10), // dışa mesafe
                    padding: EdgeInsets.all(40.0), // içe mesafe
                    child: TextButton(
                      //highlightColor: Colors.grey[850],
                      //splashColor: Colors.cyanAccent,
                      onPressed: () {
                        print("butona basıldı");
                      },
                      child: Text("11.Ay Sonuçları"),
                    ),
                    //color: Colors.green[800],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.green[900]),
                    //margin: EdgeInsets.fromLTRB(200, 10, 75, 10), // dışa mesafe
                    padding: EdgeInsets.all(40.0), // içe mesafe
                    child: TextButton(
                      //highlightColor: Colors.grey[850],
                      //splashColor: Colors.cyanAccent,
                      onPressed: () {
                        print("butona basıldı");
                      },
                      child: Text("12.Ay Sonuçları"),
                    ),
                    //color: Colors.green[700],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/

class islemdenemesi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var baslangicParasi = 100.0;
    var yuzde = 5.0;
    var depo = 0.0;
    List<String>AyList = ["0","0","0","0","0","0","0","0","0","0","0","0"];

    for (var i = 1; i < 13; i++) {
      depo = baslangicParasi + (baslangicParasi * yuzde / 100);
      var aylik = depo - baslangicParasi;
      /*
      print("Baslangic Parasi $baslangicParasi, "
          "Ay Sonu Kazanc : $depo, "
          "Aylik Kazanc : $aylik");
      */

      AyList[i - 1] = "$i. Ay, Baslangic Parasi $baslangicParasi TL \n$i. Ay, Ay Sonu Toplam Para : $depo TL \n$i. Ay, Aylik Kazanc : $aylik TL";

      baslangicParasi = depo;
    }

    print(AyList[0][0]);

    return Container(
      color: Colors.cyanAccent[700],
    );
  }
}

void main() {
  runApp(Uygulama());
}

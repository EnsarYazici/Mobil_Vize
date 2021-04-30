import 'package:flutter/material.dart';
import 'package:mobil_programlama_vizeprojesi/anaSayfa.dart';

class Aylar extends StatefulWidget {
  @override
  _AylarState createState() => _AylarState();
}

class _AylarState extends State<Aylar> {
  @override
  Widget build(BuildContext context) {
    Veriler V_ayList = ModalRoute.of(context).settings.arguments;
    List<String> V_Aylist = V_ayList.Liste;

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
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
                        Navigator.pushNamed(context, "/Ay_1",
                            arguments: Aylist(Liste: V_Aylist));
                        print(Aylar);
                      },
                      child: Text(
                        "1. Ay Sonuçları",
                        style: TextStyle(color: Colors.black),
                      ),
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
                      onPressed: () {Navigator.pushNamed(context, "/Ay_2",
                          arguments: Aylist(Liste: V_Aylist));
                        print("butona basıldı");
                      },
                      child: Text("2.Ay Sonuçları",style: TextStyle(color: Colors.black),),
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
                      onPressed: () {Navigator.pushNamed(context, "/Ay_3",
                          arguments: Aylist(Liste: V_Aylist));
                        print("butona basıldı");
                      },
                      child: Text("3.Ay Sonuçları",style: TextStyle(color: Colors.black),),
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
                      onPressed: () {Navigator.pushNamed(context, "/Ay_4",
                          arguments: Aylist(Liste: V_Aylist));
                        print("butona basıldı");
                      },
                      child: Text("4.Ay Sonuçları",style: TextStyle(color: Colors.black),),
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
                      onPressed: () {Navigator.pushNamed(context, "/Ay_5",
                          arguments: Aylist(Liste: V_Aylist));
                        print("butona basıldı");
                      },
                      child: Text("5.Ay Sonuçları",style: TextStyle(color: Colors.black),),
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
                      onPressed: () {Navigator.pushNamed(context, "/Ay_6",
                          arguments: Aylist(Liste: V_Aylist));
                        print("butona basıldı");
                      },
                      child: Text("6.Ay Sonuçları",style: TextStyle(color: Colors.black),),
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
                      onPressed: () {Navigator.pushNamed(context, "/Ay_7",
                          arguments: Aylist(Liste: V_Aylist));
                        print("butona basıldı");
                      },
                      child: Text("7.Ay Sonuçları",style: TextStyle(color: Colors.black),),
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
                      onPressed: () {Navigator.pushNamed(context, "/Ay_8",
                          arguments: Aylist(Liste: V_Aylist));
                        print("butona basıldı");
                      },
                      child: Text("8.Ay Sonuçları",style: TextStyle(color: Colors.black),),
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
                      onPressed: () {Navigator.pushNamed(context, "/Ay_9",
                          arguments: Aylist(Liste: V_Aylist));
                        print("butona basıldı");
                      },
                      child: Text("9.Ay Sonuçları",style: TextStyle(color: Colors.black),),
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
                      onPressed: () {Navigator.pushNamed(context, "/Ay_10",
                          arguments: Aylist(Liste: V_Aylist));
                        print("butona basıldı");
                      },
                      child: Text("10.Ay Sonuçları",style: TextStyle(color: Colors.black),),
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
                      onPressed: () {Navigator.pushNamed(context, "/Ay_11",
                          arguments: Aylist(Liste: V_Aylist));
                        print("butona basıldı");
                      },
                      child: Text("11.Ay Sonuçları",style: TextStyle(color: Colors.black),),
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
                      onPressed: () {Navigator.pushNamed(context, "/Ay_12",
                          arguments: Aylist(Liste: V_Aylist));
                        print("butona basıldı");
                      },
                      child: Text("12.Ay Sonuçları",style: TextStyle(color: Colors.black),),
                    ),
                    //color: Colors.green[700],
                  )
                ],
              ),
              FloatingActionButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Aylist {
  List<String> Liste;
  Aylist({this.Liste});
}

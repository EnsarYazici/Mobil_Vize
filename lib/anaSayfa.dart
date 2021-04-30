import 'package:flutter/material.dart';

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
        backgroundColor: Colors.black,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          baslangicParasi = double.parse(inputcontroller0.text);
                          yuzde = double.parse(inputcontroller1.text);
                          for (var i = 1; i < 13; i++) {
                            depo = baslangicParasi + (baslangicParasi * yuzde / 100);
                            var aylik = depo - baslangicParasi;

                            AyList[i - 1] = "$i. Ay, Baslangic Parasi $baslangicParasi TL \n\n\n\n\n$i. Ay, Ay Sonu Toplam Para : $depo TL \n\n\n\n\n$i. Ay, Aylik Kazanc : $aylik TL";
                            //AyList[i - 1] = "$i. Ay, Ay Sonu Toplam Para : $depo TL";
                            //AyList[i - 1] = "$i. Ay, Aylik Kazanc : $aylik TL";

                            baslangicParasi = depo;
                          }
                          print(AyList);
                        },
                        );
                        List<String>V_Aylist = AyList;
                        Navigator.pushNamed(context, "/Aylar",arguments: Veriler(Liste: V_Aylist));
                      },
                      child: Text("Kaydet"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FloatingActionButton(onPressed: (){Navigator.pushNamed(context, "/hakkinda");},child: Text("Hakkında"),),
                    )
                  ],
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

class Veriler {
  List<String>Liste;
  Veriler({this.Liste});

}
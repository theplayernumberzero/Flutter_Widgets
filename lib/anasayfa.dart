import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  var tfControl = TextEditingController();
  String alinanVeri = "";
  String resimAdi = "mutlu.png";
  bool switchKontrol = false;
  bool checkboxKontrol = false;
  int radioDeger = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widgets", style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          children: [
            Text(alinanVeri),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: tfControl,
                decoration: const InputDecoration(hintText: "Veri giriniz.."),
                keyboardType: TextInputType.number,
                obscureText: true,
              ),
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                alinanVeri = tfControl.text;
              });
            }, child: const Text("Veriyi al")),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                      resimAdi = "mutlu.png";
                    });
                  }, child: const Text("MUTLU")),
                  Image.asset("resimler/$resimAdi"),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      resimAdi = "uzgun.png";
                    });
                  }, child: const Text("UZGUN")),
                ],
              )
            ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 200,
                    child: SwitchListTile(
                        title: const Text("Dart"),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: switchKontrol,
                        onChanged: (veri){
                          setState(() {
                          switchKontrol = veri;
                          });
                        }
                    ),
                  ),
                  SizedBox(width: 200,
                    child: CheckboxListTile(
                        title: const Text("Flutter"),
                        controlAffinity: ListTileControlAffinity.leading,
                        value: checkboxKontrol,
                        onChanged: (veri){
                          setState(() {
                            checkboxKontrol = veri!;
                          });
                        }
                    ),
                  ),
                ],
              ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: 200,
                  child: RadioListTile(
                      title: const Text("Galatasaray"),
                      value: 1,
                      groupValue: radioDeger,
                      onChanged: (veri){
                        setState(() {
                          radioDeger = veri!;
                        });
                      }
                  ),
                ),
                SizedBox(width: 200,
                  child: RadioListTile(
                      title: const Text("Fenerbahçe"),
                      value: 2,
                      groupValue: radioDeger,
                      onChanged: (veri){
                        setState(() {
                          radioDeger = veri!;
                        });
                      }
                  ),
                ),
              ],
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                print("Switch durum: $switchKontrol");
                print("Checkbox durum: $checkboxKontrol");
                print("Radio durum: $radioDeger");
              });
            }, child: const Text("Göster")),
          ],
        ),
      ),
    );
  }
}

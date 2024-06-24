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
              ),
            ),
          ],
        ),
      ),
    );
  }
}

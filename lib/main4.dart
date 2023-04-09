import 'package:flutter/material.dart';

void main() => runApp(FoodPage());


class FoodPage extends StatefulWidget {
  @override
  _AddFoodState createState() => _AddFoodState();
}

class _AddFoodState extends State<FoodPage> {
  List<String> yemekTarifleri = [];

  String yeniTarif = "";

  void yemekTarifiEkle(String yeniTarif) {
    setState(() {
      yemekTarifleri.add(yeniTarif);
    });
  }

  void yemekTarifiSil(int index) {
    setState(() {
      yemekTarifleri.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Yemek Tarifleri Ekranı",
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 223, 100, 168),
          title: Text("Yemek Tarifleri"),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: yemekTarifleri.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(yemekTarifleri[index]),
                    onTap: () {
                      yemekTarifiSil(index);
                    },
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextField(
                    onChanged: (value) {
                      setState(() {
                        yeniTarif = value;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: "Yemek tarifini buraya yazınız (Yazdığınız tarifi silmek için tarifin üstüne basınız)",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    child: Text('Ekle'),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 223, 100, 168))),
                    onPressed: () {
                      yemekTarifiEkle(yeniTarif);
                      setState(() {
                        yeniTarif = '';
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
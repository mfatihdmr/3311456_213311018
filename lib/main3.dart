import 'package:flutter/material.dart';
import 'package:muhammetfatihdemir/main.dart';

void main() => runApp(LoginPage());

class LoginPage extends StatelessWidget {
  TextEditingController _usernameControl = TextEditingController();
  TextEditingController _emailControl = TextEditingController();
  TextEditingController _passwordControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Giriş Ekranı",
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Kullanıcı Girişi"),
          backgroundColor: Color.fromARGB(255, 223, 100, 168),
        ),
        body: Padding(
          padding: const EdgeInsets.all(100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _usernameControl,
                decoration: InputDecoration(
                  labelText: "Kullanıcı Adı: fatihdemir",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _emailControl,
                decoration: InputDecoration(
                  labelText: "E-Mail: muhammetfatihdemr@gmail.com",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _passwordControl,
                decoration: InputDecoration(
                  labelText: "Şifre: 12345",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  if (_usernameControl.text == "fatihdemir" &&
                      _emailControl.text == "muhammetfatihdemr@gmail.com" &&
                      _passwordControl.text == "12345") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainPage()),
                    );
                  }
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 223, 100, 168))),
                child: Text('Giriş Yap'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

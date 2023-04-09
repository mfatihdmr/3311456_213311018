import 'package:flutter/material.dart';
import 'package:muhammetfatihdemir/main3.dart';

void main() => runApp(RegisterPage());

class RegisterPage extends StatelessWidget {
  TextEditingController _nameControl = TextEditingController();
  TextEditingController _surnameControl = TextEditingController();
  TextEditingController _usernameControl = TextEditingController();
  TextEditingController _emailControl = TextEditingController();
  TextEditingController _passwordControl = TextEditingController();
  TextEditingController _passwordrepeatControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Kayıt Ekranı",
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 223, 100, 168),
          title: Text('Kayıt Ol'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _nameControl,
                decoration: InputDecoration(
                  labelText: "Adı: Fatih ",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextField(
                controller: _surnameControl,
                decoration: InputDecoration(
                  labelText: "Soyadı: Demir",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
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
                  labelText: "E-Posta Adresi: muhammetfatihdemr@gmail.com",
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
                obscureText: true,
              ),
              SizedBox(height: 10),
              TextField(
                controller: _passwordrepeatControl,
                decoration: InputDecoration(
                  labelText: "Şifre Tekrarı: 12345",
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 10),
              ElevatedButton(
                child: Text('Kayıt Ol'),
                onPressed: () {
                  if (_nameControl.text == "Fatih" &&
                      _surnameControl.text == "Demir" &&
                      _usernameControl.text == "fatihdemir" &&
                      _emailControl.text == "muhammetfatihdemr@gmail.com" &&
                      _passwordControl.text == "12345" &&
                      _passwordrepeatControl.text == "12345") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  }
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 223, 100, 168))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

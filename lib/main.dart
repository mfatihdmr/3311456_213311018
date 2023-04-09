import 'package:flutter/material.dart';
import 'package:muhammetfatihdemir/main2.dart';
import 'package:muhammetfatihdemir/main3.dart';
import 'package:muhammetfatihdemir/main4.dart';

void main() => runApp(MainPage());

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    LoginScreen(),
    RegisterScreen(),
    FoodScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MainPage',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 223, 100, 168),
          title: const Text('Ana Sayfa'),
        ),
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Giriş Yap",
                backgroundColor: Color.fromARGB(255, 223, 100, 168)),
            const BottomNavigationBarItem(
                icon: Icon(Icons.app_registration_outlined),
                label: "Üye Ol",
                backgroundColor: Color.fromARGB(255, 223, 100, 168)),
            const BottomNavigationBarItem(
                icon: Icon(Icons.food_bank_outlined),
                label: "Yemek Tarifleri",
                backgroundColor: Color.fromARGB(255, 223, 100, 168)),
          ],
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginPage()));
        },
        child: const Text("Giriş Yap"),
      ),
    );
  }
}

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => RegisterPage()));
        },
        child: const Text("Üye Ol"),
      ),
    );
  }
}

class FoodScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => FoodPage()));
        },
        child: const Text("Yemek Tarifleri"),
      ),
    );
  }
}

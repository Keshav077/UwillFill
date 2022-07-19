import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:splashscreen/splashscreen.dart';

void main(){
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      navigateAfterSeconds: AfterSplash(),
      title: const Text('Welcome In Uwinfill',
      style: TextStyle(
        fontWeight: FontWeight.w200,
        color: Colors.white,
        fontSize: 35.0
      ),),
      image: Image.asset('lib/assets/background.jpg'),
      backgroundColor: Colors.black,
      styleTextUnderTheLoader: TextStyle(),
      photoSize: 150.0,
      onClick: ()=>print("Flutter Egypt"),
      loaderColor: Colors.white
    );
  }
}

class AfterSplash extends StatefulWidget {
  const AfterSplash({super.key});

  @override
  State<AfterSplash> createState() => _AfterSplashState();
}

class _AfterSplashState extends State<AfterSplash> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
      elevation: 0,
        backgroundColor: Colors.grey[900],
      title: const Text("UWinFill"),
      automaticallyImplyLeading: false
      ),
      body: Container(
        color: Colors.grey[900],
      ),
       bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[800],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: 'Maps',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Statistics',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple[200],
        onTap: _onItemTapped,
      ),
    );
  }
}
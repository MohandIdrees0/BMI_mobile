import 'package:flutter/material.dart';
import 'inputPage.dart';
void main() {
  runApp(myApp());
}

//////////////
class myApp extends StatefulWidget {
  const myApp({super.key});

  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme().copyWith(color: Color(0xff090C20)),
         scaffoldBackgroundColor: Color(0xff0A0D22)
      ),
      home: inputPage(),
    );
  }
}

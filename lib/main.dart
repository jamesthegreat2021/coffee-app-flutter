import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/textpage.dart';
import 'package:hive_flutter/hive_flutter.dart';



void main() async {

  //initialize the hive
  await Hive.initFlutter();

  var box = await Hive.openBox('mybox');
  

  runApp(MyPage());

}

class MyPage extends StatelessWidget {

  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        primaryColor: Colors.yellow),
  ); 
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_application_1/arrow_forward.dart';
import 'package:flutter_application_1/other_settings.dart';
import 'package:flutter_application_1/search.dart';

class OtherPage extends StatefulWidget {
  const OtherPage({super.key});

  @override
  State<OtherPage> createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
   int _selectedIndex = 0;

  final List _pages = [
    SearchPage(), 
    OtherSettings(),
    Arrow(),
  ]; 



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('O T H E R  P A G E S')),
      body: _pages[_selectedIndex], 

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (int index) {
        setState(() {
        _selectedIndex = index; 
    });
        },
       
       
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          BottomNavigationBarItem(icon: Icon(Icons.arrow_forward), label: 'Forward'),
        ],
      ),
    ); 
  }
}
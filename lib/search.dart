import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search button clicked'),
      ),
      body: Center(child: Text('Search navigation done'),),
    ); 
  }
}
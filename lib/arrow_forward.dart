import 'package:flutter/material.dart';

class Arrow extends StatelessWidget {
  const Arrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Arrow forward page')),
      body: Center(child: Text('Arrow forward page navigated'))
    );
  }
}
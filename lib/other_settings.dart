import 'package:flutter/material.dart';

class OtherSettings extends StatelessWidget {
  const OtherSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('other settings clicked')
      ),
      body: Center(child: Text('Other settings clicked'),)
    ); 
  }
}
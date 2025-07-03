import 'package:flutter/material.dart'; 

class CoffeePrefs extends StatelessWidget {
  const CoffeePrefs({super.key});

@override
Widget build(BuildContext context){
  return Column(
    children: [
      Row(
        children: [
        Text("Strength: "),
        Text("3"),
        Image.asset('assets/img/coffee_bean.png',
         width: 25,
         color: Colors.brown[100],
         colorBlendMode: BlendMode.multiply,),
        Expanded(child: SizedBox(width: 50)),
        const Text("+"),
        ],
      ), 
      Row(
        children: [
        Text("sugars: "), 
        Text("3"), 
        Image.asset('assets/img/sugar_cube.png',
        width: 25,
        color: Colors.brown[100], 
        colorBlendMode: BlendMode.multiply,
        ),
        Expanded(child: SizedBox(width: 50,)), 
        const Text("+"),        ],
      ),
    ],
  ); 
}
}
import 'package:flutter/material.dart'; 

class CoffeePrefs extends StatelessWidget {
  const CoffeePrefs({super.key});

  void increaseStrength() {
    print('increase strenght by 1');
  }
  void increaseSugars(){
    print('increases sugars by 1');
  }

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
        FilledButton(
          style: FilledButton.styleFrom(
            backgroundColor: Colors.brown,
            foregroundColor: Colors.white,
          ),
          onPressed: increaseStrength,
          child: const Text('+')
        ),
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
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.brown,
           
          ),
          onPressed: increaseSugars, 
          child: const Text('+')
        ),        ],
      ),
    ],
  ); 
}
}
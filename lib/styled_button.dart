import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  const StyledButton(
    {required this.onPressed,
    required this.child,
    super.key}
    
  );
  final void Function() onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.brown[700], 
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
      ),
      onPressed: onPressed,
      child: child,
     
    );
  }
}
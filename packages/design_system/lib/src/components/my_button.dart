import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const MyButton({super.key, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: myTheme.elevatedButtonTheme.style,
      onPressed: onPressed,
      child: Text(label),
    );
  }
}

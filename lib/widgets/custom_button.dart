

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final Widget label;
  const CustomButton({super.key, required this.icon, required this.onPressed, required this.label});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      elevation: 2,
      highlightElevation: 5,
      backgroundColor: Colors.blueGrey,
      shape: StadiumBorder(),
      onPressed: onPressed, 
      icon: Icon(icon),
      label: label,
      );
  }
}


import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextInputType type;
  final IconData icon;
  final TextEditingController controller;
  const CustomInput({
    super.key, 
    required this.hintText, 
    required this.obscureText, 
    required this.type, 
    required this.icon, 
    required this.controller
    });

  @override
  Widget build(BuildContext context) {
    return Container(
     margin: EdgeInsets.only(bottom: 20),
     padding: EdgeInsets.only(top: 5, left: 5, bottom: 5, right: 20),
     decoration: BoxDecoration(
       color: Colors.white,
       borderRadius: BorderRadius.circular(20),
       boxShadow: [
         BoxShadow(
           color: Colors.black,
           offset: Offset(0, 5),
           blurRadius: 5
         )]),
     child: TextField(
      controller: controller,
       autocorrect: false,
       keyboardType: type,
       obscureText: obscureText,
       decoration: InputDecoration(
         prefixIcon: Icon(icon),
         focusedBorder: InputBorder.none,
         border: InputBorder.none,
         hintText: hintText
       ),
     ));
  }
}
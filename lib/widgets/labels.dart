import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String ruta;
  final Widget text;
  const Labels({super.key, required this.ruta, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          context.push(ruta);
        }, 
        child: text,
        
        ));
  }
}
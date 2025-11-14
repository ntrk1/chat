
import 'package:flutter/material.dart';

class BubleChat extends StatelessWidget {
  final String text;
  final String id;
  final AnimationController animationController;
  const BubleChat({super.key, required this.text, required this.id, required this.animationController});

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animationController,
      child: SizeTransition(
        sizeFactor: CurvedAnimation(parent: animationController, curve: Curves.easeOut),
        child: Container(
          child: id == ''
          ? _rigth()
          : _left(),
        ),
      ),
    );
  }

  Widget _rigth() {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(bottom: 5, left: 30, right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.amber
        ),
        child: Text(text, style: TextStyle(color: Colors.white),),
      ),
    );
  }

  Widget _left() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.only(bottom: 5, left: 5, right: 30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blueAccent
        ),
        child: Text(text, style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
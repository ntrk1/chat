
import 'package:flutter/cupertino.dart';

class Logo extends StatelessWidget {
  const Logo();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: 180,
            child: Image.asset('/assets/tag-logo.png'),
          ),
          Text('Titulo')]
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AppBarTitil extends StatelessWidget {
  const AppBarTitil({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'News',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 27,
          ),
        ),
        Text(
          'Cloud',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 27,
              color: Colors.amber),
        ),
      ],
    );
  }
}

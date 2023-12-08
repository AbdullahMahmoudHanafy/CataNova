import 'package:flutter/material.dart';

class titleWidget extends StatelessWidget {
  const titleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "   C",
          style: TextStyle(color: Colors.green),
        ),
        Text(
          "ata",
          style: TextStyle(color: Colors.black),
        ),
        Text(
          "N",
          style: TextStyle(color: Colors.green),
        ),
        Text(
          "ova",
          style: TextStyle(color: Colors.black),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';

class buttonModel extends StatelessWidget {
  const buttonModel({required this.buttonText, required this.buttonKey});
  final String buttonText;
  final GlobalKey buttonKey;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => scrollToItem(),
      child: Text(
        buttonText,
        style: TextStyle(
            color: Colors.black, fontSize: 20, backgroundColor: Colors.white),
      ),
    );
  }

  scrollToItem() {
    final context = buttonKey.currentContext!;
    Scrollable.ensureVisible(context);
  }
}

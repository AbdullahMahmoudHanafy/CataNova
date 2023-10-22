import 'package:flutter/material.dart';

class drawerTiles extends StatelessWidget {
  const drawerTiles({required this.icon, required this.title});

  final Icon icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(title),
      onTap: () {},
    );
  }
}

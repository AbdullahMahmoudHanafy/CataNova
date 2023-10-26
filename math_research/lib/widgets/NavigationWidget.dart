import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:math_research/widgets/drawerTiles.dart';

class navigationWidget extends StatelessWidget {
  const navigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildHeader(),
            buildMenuItems(),
          ],
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Container();
  }

  Widget buildMenuItems() {
    return Column(
      children: [
        drawerTiles(icon: Icon(Icons.home), title: "Home"),
        drawerTiles(icon: Icon(Icons.settings), title: "Methodology"),
        drawerTiles(icon: Icon(Icons.wysiwyg_sharp), title: "Results"),
        drawerTiles(icon: Icon(Icons.read_more), title: "Research"),
        drawerTiles(icon: Icon(Icons.search), title: "Scan Now"),
        drawerTiles(icon: Icon(FontAwesomeIcons.linkedin), title: "Contact Us"),
      ],
    );
  }
}

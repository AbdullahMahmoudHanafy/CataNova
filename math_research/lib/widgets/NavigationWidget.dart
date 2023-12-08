import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:math_research/widgets/drawerTiles.dart';

class navigationWidget extends StatelessWidget {
  const navigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: new ListView(
        children: <Widget>[
          new Container(
            child: new DrawerHeader(
                child: new CircleAvatar(
              radius: 300,
              backgroundImage: AssetImage("assets/images/finallogo.jpg"),
            )),
            color: Colors.white,
          ),
          new Container(color: Colors.white, child: buildMenuItems())
        ],
      ),
    );
  }

  Widget buildMenuItems() {
    return const Column(
      children: [
        drawerTiles(icon: Icon(Icons.home), title: "Home"),
        drawerTiles(icon: Icon(Icons.healing), title: "Protection"),
        drawerTiles(icon: Icon(Icons.wysiwyg_sharp), title: "Results"),
        drawerTiles(icon: Icon(Icons.read_more), title: "Research"),
        drawerTiles(icon: Icon(Icons.search), title: "Scan Now"),
        drawerTiles(icon: Icon(FontAwesomeIcons.phone), title: "Contact Us"),
      ],
    );
  }
}

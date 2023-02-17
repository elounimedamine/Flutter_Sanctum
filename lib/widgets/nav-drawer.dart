import 'package:flutter/material.dart';
import 'package:flutter_sanctum/Screens/Posts-Screen.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        const ListTile(
          title: Text('Sami Mansour'),
        ),
        ListTile(
          title: const Text('Posts'),
          onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const PostsScreen())),
        ),
      ]),
    );
  }
}

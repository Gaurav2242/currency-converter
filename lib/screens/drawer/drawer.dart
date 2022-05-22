import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        const UserAccountsDrawerHeader(
            accountName: Text('GAURAV'),
            accountEmail: Text('g4garav03@gmail.com')),
        ListTile(
          leading: TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/home');
              },
              child: const Text('HOME')),
          trailing: const Icon(Icons.arrow_right),
        ),
        const SizedBox(
          height: 30,
        ),
        ListTile(
          leading: TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/about');
              },
              child: const Text('ABOUT')),
          trailing: const Icon(Icons.arrow_right),
        ),
        const SizedBox(
          height: 30,
        ),
        ListTile(
          leading: TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/privacy');
              },
              child: const Text('PRIVACY')),
          trailing: const Icon(Icons.arrow_right),
        ),
        const SizedBox(
          height: 30,
        ),
        ListTile(
          leading: TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/news');
              },
              child: const Text('NEWS')),
          trailing: const Icon(Icons.arrow_right),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    ));
  }
}

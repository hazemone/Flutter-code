import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Stack(
              children: <Widget>[
                Image.asset(
                  'assets/images/UoS.png',
                ),
                Container(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'University of Sunderland',
                      style: Theme.of(context).textTheme.headlineSmall,
                    )),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.looks_one),
            title: const Text('Scene 1'),
            onTap: () {
              Navigator.pushNamed(context, '/drawer1');
            },
          ),
          ListTile(
            leading: const Icon(Icons.looks_two),
            title: const Text('Scene 2'),
            onTap: () {
              Navigator.pushNamed(context, '/drawer2');
            },
          ),
          ListTile(
            leading: const Icon(Icons.looks_3),
            title: const Text('Scene 3'),
            onTap: () {
              Navigator.pushNamed(context, '/drawer3');
            },
          ),
        ],
      ),
    );
  }
}

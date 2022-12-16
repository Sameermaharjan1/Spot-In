import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // UserAccountsDrawerHeader(
          //   accountName: Text('Sameer'),
          //   accountEmail: Text('SameerMaharjan@gmail.com'),
          //   currentAccountPicture: CircleAvatar(
          //     child: ClipOval(
          //       child: Image.asset(
          //         "assets/images/IMG_4377.jpg",
          //         height: 100,
          //         width: 100,
          //         fit: BoxFit.cover,
          //       ),
          //     ),
          //   ),
          //   decoration: BoxDecoration(
          //       color: Colors.black,
          //       image: DecorationImage(
          //         image: AssetImage("assets/images/2.jpg"),
          //         fit: BoxFit.cover,
          //       )),
          // ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorites'),
            onTap: () => print('fav'),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('Friends'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Request'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Setting'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Exit'),
            onTap: () => null,
          )
        ],
      ),
    );
  }
}

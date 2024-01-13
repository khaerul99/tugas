import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('khaerul'),
            accountEmail: Text('Khaerul@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                  child: Image.network(
                'https://studio.mrngroup.co/storage/app/media/Prambors/Editorial%203/avatar-20230620172209.webp?tr=w-600',
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              )),
            ),
            decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: NetworkImage(
                    'https://feb.umri.ac.id/wp-content/uploads/2016/01/bg.jpg',
                  ),
                  fit: BoxFit.cover,
                )),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('favorite'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text('friends'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('share'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notification'),
            onTap: () => null,
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                width: 20,
                height: 20,
                child: Center(
                  child: Text(
                    '#',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('settings'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('policies'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('exit'),
            onTap: () => null,
          ),
        ],
      ),
    );
  }
}

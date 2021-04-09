import "package:flutter/material.dart";


class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child:  ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Manuel"), 
              accountEmail: Text("emmowu10@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/codingrev.jpg"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Codingrev"),
              subtitle: Text("Software Engineer"),
              trailing: Icon(Icons.edit),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("emmowu10@gmail.com"),
              trailing: Icon(Icons.edit),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.signal_wifi_4_bar),
              title: Text("Website"),
              subtitle: Text("https://codingrev.netlify.com"),
              trailing: Icon(Icons.edit),
              onTap: () {},
            )
          ],
        ),
      );
  }
}
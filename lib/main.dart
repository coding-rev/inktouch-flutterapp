// import 'package:flutter/cupertino.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

void main(){
  // widgetsApp //materialApp //CupertinoApp
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myText = "Emmanuel";
  TextEditingController _nameController = TextEditingController();


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      
      appBar: AppBar(
        title: Text("BSc. Computer Engineering"),
      ),
      
      
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
                      child: Card(
              child: Column(
                children: <Widget>[
                  Image.asset("assets/back-1.jpg"),
                  SizedBox(
                    height: 20,
                    ),
                  Text("Developed by : "+myText, style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,),),
                  SizedBox(
                    height: 20,
                    ),
                  TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      hintText: "Enter Some Text",
                      labelText: "Name:",
                      border: OutlineInputBorder(),
                  ),
                  ),
              ],
            ),
        ),
          ),
      ),
      ),
      
      drawer: Drawer(
        child:  ListView(
          padding: const EdgeInsets.all(0),
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Codingrev"), 
              accountEmail: Text("emmowu10@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/codingrev.jpg"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Owusu Emmanuel"),
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
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {
            
          });
        },
        child: Icon(
          Icons.send
        ),
      ),

    );
    
  }
}


import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:inktouch/pages/login_page.dart';
import 'package:inktouch/utils/constants.dart';
import '../drawer.dart';

class HomePage extends StatefulWidget {
  // setting routing
  static const String routeName = "/home";
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // var myText = "Emmanuel";
  // TextEditingController _nameController = TextEditingController();

// var url = Uri.parse("http://127.0.0.1:8000/api");

 var url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
 var data;

fetchData()async{

  var res = await http.get(url);
  data = jsonDecode(res.body);
  print(data); 
  setState(() {});
}
  
  @override
  void initState() {
    super.initState();
    fetchData();
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
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app), 
            onPressed: () {
              Constants.prefs.setBool("loggedIn", false);
              Navigator.pushReplacementNamed(context, LoginPage.routeName);
              // Navigator.pop(context);
            }),
        ],
      ),
      
      
      body: data != null
      ?GridView.builder(
        gridDelegate: 
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),

        itemBuilder: (context,index){
          return ListTile(
            leading: Image.network(data[index]["url"]),
            title: Text(data[index]["title"]),
            subtitle: Text("Index Number : ${data[index]["id"]}"),
            
          );
        }, 
        itemCount: data.length,
        )
      
      :Center(
        child: CircularProgressIndicator(),
      ),

      drawer: MyDrawer(),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // myText = _nameController.text;
          // setState(() {});
        },
        child: Icon(
          Icons.send
        ),
      ),

    );
    
  }
}


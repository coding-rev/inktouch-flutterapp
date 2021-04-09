// import 'package:flutter/cupertino.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:inktouch/pages/home_page.dart';
import 'package:inktouch/pages/login_page.dart';
import 'package:inktouch/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  // widgetsApp //materialApp //CupertinoApp
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    // For removing that debug banner
    debugShowCheckedModeBanner: false,
    home: Constants.prefs.getBool("loggedIn")==true
      ?HomePage()
      :LoginPage(),

    theme: ThemeData(
      primarySwatch: Colors.blue,
      ),
    routes: {
      LoginPage.routeName : (context) => LoginPage(),
      HomePage.routeName : (context) => HomePage(),
    },
  );
  }
}


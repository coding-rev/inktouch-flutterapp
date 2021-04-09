import 'package:flutter/material.dart';
import 'package:inktouch/pages/home_page.dart';
import 'package:inktouch/utils/constants.dart';

class LoginPage extends StatefulWidget {
  // Setting routing
  static const String routeName = "/login";

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //Creating a formKey Global variable
  final formKey = GlobalKey<FormState>();

  final _usernameController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
        ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset("assets/back-2.jpg", 
          fit: BoxFit.cover,
          color: Colors.black.withOpacity(0.7),
          colorBlendMode: BlendMode.darken,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
        child: Form(
                key: formKey,
                child: Card(
                    child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextFormField(
                        controller: _usernameController,
                        validator: (s) {},
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "Enter email",
                          labelText: "Username"
                        ),
                      ),
                      SizedBox(
                        height: 20
                        ),
                      TextFormField(
                        controller: _passwordController,
                        keyboardType: TextInputType.text,
                        validator: (s) {},
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter password",
                          labelText: "Password"
                        ),
                      ),
                       SizedBox(
                        height: 20
                        ),
                      ElevatedButton(
                        child: Text("Sign In"),
                        onPressed: () {
                          // Dealing with sharedpreferences
                          Constants.prefs.setBool("loggedIn", true); 

                          // Validating a form
                          // formKey.currentState.validate();
                                                    
                          // Push means adding another screen or going to another scree
                          // Pop means removing a screen or going back to a screen
                          
                          // This is useful if only you want to pass something to the next page
                          // Navigator.push(
                          //   context, MaterialPageRoute(
                          //     builder: (context)=>HomePage()
                          //     ));

                          // else
                          Navigator.pushReplacementNamed(context, HomePage.routeName);
                        },
                        ),

                    ],
              ),
                  ),
                ),
        ),
      ),
            ),
          ),
        ]
        )
    );
  }
}

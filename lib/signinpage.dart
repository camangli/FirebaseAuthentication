import 'package:firebaseaut/authService.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:passwordfield/passwordfield.dart';

class SignInPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Firebase Authentication"),
      ),
      body: Column(
        children: <Widget>[
          Padding(padding:EdgeInsets.all(30),
            child: Column(
              children: <Widget>[
                Center(child: Text("LOGIN"),),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: "Email",
                  ),
                ),
                PasswordField(
                  controller: passwordController,
                ),
                RaisedButton(
                  onPressed: () {
                    context.read<AuthService>().signIn(
                      email: emailController.text.trim(),
                      password: passwordController.text.trim(),
                    );
                  },
                  child: Text("Sign in"),
                )
              ],
            ),

          ),
        ],
      ),
    );
  }
}
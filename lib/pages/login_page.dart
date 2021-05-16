import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatelessWidget {
  // const name({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/login_image.png",
                  fit: BoxFit.cover, height: 250),
              SizedBox(height: 20),
              Text(
                "Welcome",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 30.0),
                child: Column(children: [
                  TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter username", labelText: "username")),
                  TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter password", labelText: "password"))
                ]),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  // print("Hi from onPressed function");
                  Navigator.pushNamed(context, MyRoutes.homeroute);
                },
                style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                child: Text("Login"),
              )
            ],
          ),
        ));
  }
}

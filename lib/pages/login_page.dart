import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  // const name({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

String name = "";
bool changeButton = false;

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("assets/images/login_image.png",
                    fit: BoxFit.cover, height: 250),
                SizedBox(height: 20),
                Text(
                  "Welcome $name",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 30.0),
                  child: Column(children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter username", labelText: "username"),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter password", labelText: "password"))
                  ]),
                ),
                SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  splashColor: Colors.deepOrangeAccent,
                  onTap: () async {
                    setState(() {
                      changeButton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homeroute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeButton ? 50 : 150,
                    height: 50,
                    // color: Colors.deepPurple,
                    child: Center(
                      child: changeButton
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                    ),
                    decoration: BoxDecoration(
                        // shape:
                        //     changeButton ? BoxShape.circle : BoxShape.rectangle,
                        color: Colors.deepOrange,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8)
                        // backgroundBlendMode: BlendMode.colorDodge
                        ),
                  ),
                ),

                // ElevatedButton(
                //   onPressed: () {
                //     // print("Hi from onPressed function");
                //     Navigator.pushNamed(context, MyRoutes.homeroute);
                //   },
                //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                //   child: Text("Login"),
                // )
              ],
            ),
          ),
        ));
  }
}

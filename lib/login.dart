import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:xyzlogin/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 120,
          ),
          Align(
              alignment: Alignment.center,
              child: Text(
                "LOGIN",
                style: TextStyle(fontSize: 30),
              )),
          SizedBox(
            height: 60.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  print("print facebook");
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: MyColors.blue,
                      borderRadius: BorderRadius.circular(40.0)),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: SizedBox(
                            height: 30,
                            child: Image.asset("assets/facebook.jpeg")),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 10.0, right: 20.0, top: 15, bottom: 15),
                          child: Text(
                            "facebook",
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: MyColors.twitterblue,
                    borderRadius: BorderRadius.circular(40.0)),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 20.0),
                      child: SizedBox(
                          height: 30, child: Image.asset("assets/twitter.png")),
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 15.0, horizontal: 20.0),
                        child: Text(
                          "twitter",
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Align(
              alignment: Alignment.center,
              child: Text(
                "OR",
                style: TextStyle(fontSize: 15, color: Colors.grey),
              )),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.black12,
                filled: true,
                focusColor: Colors.black,
              
                prefixIcon: Icon(Icons.person),
                hintText: "Email",
                border: InputBorder.none,
              ),
              
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Password",
                fillColor: Colors.black12,
                filled: true,
                prefixIcon: Icon(Icons.lock),
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          InkWell(
            onTap: () {
              print("i forgot password");
            },
            child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                )),
          ),
          SizedBox(
            height: 40.0,
          ),
          MaterialButton(
            onPressed: () {
              print("hello");
            },
            child: Text(
              "LOGIN",
              style: TextStyle(color: Colors.white),
            ),
            color: MyColors.buttonblue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0)),
            padding: EdgeInsets.symmetric(horizontal: 100.0, vertical: 15.0),
          )
        ],
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:social_media_app/widget/curve_clipper.dart';

import 'home-screen.dart';
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height:MediaQuery.of(context).size.height,
          child: Column(
            children: [
              ClipPath(
                clipper: CurveClipper(),
                child: Image(image: AssetImage("assets/images/login_background.jpg"),
                  height: MediaQuery.of(context).size.height/2.5,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              Text("FRENZY",style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 5.0
              ),
              ),
              SizedBox(height: 5.0,),
              Padding(
                padding:EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "User Name",
                    prefixIcon: Icon(
                        Icons.account_box,
                      size: 30.0,

                    )
                  ),
                ),
              ),
              SizedBox(height: 5.0,),
              Padding(
                padding:EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Password",
                      prefixIcon: Icon(
                        Icons.lock,
                        size: 30.0,
                      )
                  ),
                ),
              ),
              SizedBox(height: 10.0,),
              GestureDetector(
                onTap:(){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>HomeScreen()));
                },
                child: Container(
                  height: 45.0,
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 16.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Text("Login",style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.5,
                    fontSize: 22.0
                  ),),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: GestureDetector(
                    onTap:(){},
                    child: Container(
                      alignment: Alignment.center,
                      color: Theme.of(context).primaryColor,
                      height: 50.0,
                      child: Text("Don't have an account/Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600
                      ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

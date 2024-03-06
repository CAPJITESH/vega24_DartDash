import 'package:dartdash/constants/constants.dart';
import 'package:dartdash/screens/Bottom%20Nav/bottom_nav_new.dart';
import 'package:dartdash/screens/auth/signupscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatelessWidget
{
  final auth = FirebaseAuth.instance;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width*0.09),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height*0.1,
              ),
              Text("Welcome Back!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: size.width*0.07),),
              Text("Fill your details to log in",style: TextStyle(fontWeight: FontWeight.bold,fontSize: size.width*0.04,color: Colors.grey),),
              SizedBox(
                height: size.height*0.1,
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: size.width*0.03),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(size.width*0.05),
                  color: Colors.grey.shade100,
                ),
                width: size.width*0.8,
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: "Email Address",
                    prefixIcon: Icon(Icons.email),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: size.height*0.03,
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: size.width*0.03),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(size.width*0.05),
                  color: Colors.grey.shade100,
                ),
                width: size.width*0.8,
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: "Password",
                    suffixIcon: Icon(Icons.remove_red_eye),
                    prefixIcon: Icon(Icons.lock),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: size.height*0.01,),
              Padding(
                padding: EdgeInsets.only(left: size.width*0.05),
                child: Text("Forgot Password?",style: TextStyle(color: Colors.grey),),
              ),

              SizedBox(
                height: size.height*0.07,
              ),

              InkWell(
                onTap: ()async{
                  auth.signInWithEmailAndPassword(email: emailController.text, password: passwordController.text).then((value){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const BottomNav(currentIndex: 0),),);
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  width: size.width*0.83,
                  height: size.height*0.07,
                  decoration: BoxDecoration(
                    color: green,
                    borderRadius: BorderRadius.circular(size.width*0.03),
                  ),
                  child: Text("Log in",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: size.width*0.05),),
                ),
              ),

              SizedBox(
                height: size.height*0.065,
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: size.width*0.6,
                  child: Row(
                    children: [
                      Expanded(child: Divider()),
                      Text("    Or Continue with    ",style: TextStyle(color: Colors.grey),),
                      Expanded(child: Divider()),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height*0.03,
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: size.width*0.6,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: size.width*0.07,
                      ),
                      CircleAvatar(
                        radius: size.width*0.07,
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: size.height*0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("New User?  ",style: TextStyle(color: Colors.grey),),
                  InkWell(
                    splashFactory: NoSplash.splashFactory,
                    onTap:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen(),),);
                      },
                    child: Text("Create New Account",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

}
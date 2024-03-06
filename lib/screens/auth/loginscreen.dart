import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height*0.1,
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width*0.06),
              child: Text("Welcome Back!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: size.width*0.07),),
            ),
            Text("Fill your details to log in",style: TextStyle(fontWeight: FontWeight.bold,fontSize: size.width*0.04,color: Colors.grey),),
            SizedBox(
              height: size.height*0.1,
            ),

          ],
        ),
      ),
    );
  }

}
import 'package:dartdash/model/usermodel.dart';
import 'package:dartdash/screens/auth/personaldetails.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class SignUpScreen extends StatelessWidget
{
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(icon: Icon(Icons.keyboard_arrow_left,size: size.width*0.09,),onPressed: (){
          Navigator.pop(context);
        },),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width*0.09),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height*0.01,
              ),
              Text("Register Account",style: TextStyle(fontWeight: FontWeight.bold,fontSize: size.width*0.07),),
              Text("Fill your details to sign up",style: TextStyle(fontWeight: FontWeight.bold,fontSize: size.width*0.04,color: Colors.grey),),
              SizedBox(
                height: size.height*0.06,
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
                  controller: firstNameController,
                  decoration: InputDecoration(
                    labelText: "First Name",
                    prefixIcon: Icon(Icons.person),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: size.height*0.01,
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
                  controller: lastNameController,
                  decoration: InputDecoration(
                    labelText: "Last Name",
                    prefixIcon: Icon(Icons.person),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: size.height*0.01,
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
                height: size.height*0.01,
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
              SizedBox(
                height: size.height*0.01,
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
                  controller: confirmPasswordController,
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
                    suffixIcon: Icon(Icons.remove_red_eye),
                    prefixIcon: Icon(Icons.lock),
                    border: InputBorder.none,
                  ),
                ),
              ),

              SizedBox(
                height: size.height*0.01,
              ),
              InkWell(
                onTap: ()async{
                  if(passwordController.text == confirmPasswordController.text)
                    {
                      final cred = await auth.createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text);
                      await cred.user!.updateDisplayName(firstNameController.text);
                      final user = UserModel(email: emailController.text,firstName: firstNameController.text,lastName: lastNameController.text);
                      Navigator.pop(context);
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> PersonalDetails(user: user,),),);
                    }
                },
                child: Container(
                  alignment: Alignment.center,
                  width: size.width*0.83,
                  height: size.height*0.07,
                  decoration: BoxDecoration(
                    color: green,
                    borderRadius: BorderRadius.circular(size.width*0.03),
                  ),
                  child: Text("Sign Up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: size.width*0.05),),
                ),
              ),

              SizedBox(
                height: size.height*0.01,
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: size.width*0.6,
                  child: const Row(
                    children: [
                      Expanded(child: Divider()),
                      Text("    Or Continue with    ",style: TextStyle(color: Colors.grey),),
                      Expanded(child: Divider()),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height*0.015,
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
                height: size.height*0.015,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already a User?  ",style: TextStyle(color: Colors.grey),),
                  InkWell(
                    splashFactory: NoSplash.splashFactory,
                    onTap:(){
                      Navigator.pop(context);
                    },
                    child: Text("Login to your Account",style: TextStyle(fontWeight: FontWeight.bold),),
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
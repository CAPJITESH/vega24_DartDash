import 'package:dartdash/model/usermodel.dart';
import 'package:dartdash/screens/Bottom%20Nav/bottom_nav_new.dart';
import 'package:dartdash/services/firestoreservice.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';

class PersonalDetails extends StatelessWidget
{
  UserModel user;
  PersonalDetails({required this.user});

  final heightController = TextEditingController();
  final weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width*0.09),
          child: Column(
            children: [
              SizedBox(
                height: size.height*0.07,
              ),
              Text("Personal Details",style: TextStyle(fontWeight: FontWeight.bold,fontSize: size.width*0.07),),
              Text("Fill your details as mentioned",style: TextStyle(fontWeight: FontWeight.bold,fontSize: size.width*0.04,color: Colors.grey),),
              SizedBox(
                height: size.height*0.06,
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: size.height*0.01,horizontal: size.width*0.03),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(size.width*0.05),
                  color: Colors.grey.shade100,
                ),
                width: size.width*0.8,
                child: TextField(
                  controller: heightController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter Height",
                    prefixIcon: Icon(Icons.height),
                    suffixText: "In Cms",
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: size.height*0.02,
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: size.height*0.01,horizontal: size.width*0.03),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(size.width*0.05),
                  color: Colors.grey.shade100,
                ),
                width: size.width*0.8,
                child: TextField(
                  controller: weightController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "Enter Weight",
                    prefixIcon: Icon(Icons.monitor_weight),
                    suffixText: "In Kgs",
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: size.height*0.5,
              ),
              InkWell(
                onTap: ()async {
                  user.height = int.parse(heightController.text);
                  user.weight = int.parse(weightController.text);
                  await FireStoreServices.addUser(user);
                  Navigator.pop(context);
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> BottomNav(currentIndex: 0),),);
                },
                child: Container(
                  alignment: Alignment.center,
                  width: size.width*0.83,
                  height: size.height*0.07,
                  decoration: BoxDecoration(
                    color: green,
                    borderRadius: BorderRadius.circular(size.width*0.03),
                  ),
                  child: Text("Continue",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: size.width*0.05),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
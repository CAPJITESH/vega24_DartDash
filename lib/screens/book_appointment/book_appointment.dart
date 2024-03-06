  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/constants.dart';
import 'doctors_info.dart';

class BookAppointment extends StatefulWidget {
    const BookAppointment({super.key});
  
    @override
    State<BookAppointment> createState() => _BookAppointmentState();
  }
  
  class _BookAppointmentState extends State<BookAppointment> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: green,
          foregroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: const Text(
            'Book an Appointment',
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  splashFactory: NoSplash.splashFactory,
                  onTap: (){
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.grey.shade700,
                            size: 24,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Text(
                  'Specialities',
                    style: TextStyle(
                      fontSize: 26.sp,
                      fontWeight: FontWeight.w500,
                    )
                ),
                SizedBox(height: 20.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage(
                            'assets/book_appointment_icons/general_physicians.png',
                          ),
                          radius: 40.r,
                        ),
                        SizedBox(height: 8.h,),
                        Text(
                          'General Physician',
                        )
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: const AssetImage(
                            "assets/book_appointment_icons/child_specialist.jpg",
                          ),
                          radius: 40.r,
                        ),
                        SizedBox(height: 8.h,),
                        Text(
                          ' Child Specialist',
                        )
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: const AssetImage(
                            "assets/book_appointment_icons/dental_care.jpg",
                          ),
                          radius: 40.r,
                        ),
                        SizedBox(height: 8.h,),
                        Text(
                          'Dental care',
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: const AssetImage(
                            'assets/book_appointment_icons/mental_wellness.jpg',
                          ),
                          radius: 40.r,
                        ),
                        SizedBox(height: 8.h,),
                        Text(
                          'Mental wellness',
                        )
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: const AssetImage(
                            "assets/book_appointment_icons/ear,nose,throat.png",
                          ),
                          radius: 40.r,
                        ),
                        SizedBox(height: 8.h,),
                        Text(
                          'Ear, Nose, Throat',
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const DoctorsInfo(type: "Women's health")));
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage: const AssetImage(
                              "assets/book_appointment_icons/women's_health.jpg",
                            ),
                            radius: 40.r,
                          ),
                          SizedBox(height: 8.h,),
                          Text(
                            "Women's health",
                          )
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      );
    }
  }
  
import 'package:dartdash/constants/constants.dart';
import 'package:dartdash/screens/Home/search_page.dart';
import 'package:dartdash/screens/book_appointment/book_appointment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    List list = [
      "https://cdn.create.vista.com/downloads/c8fa63dc-2f79-471b-843f-cee731e95478_1024.jpeg",
      "https://www.easemytrip.com/images/offer-img/doctors-lp2.png",
      "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/online-doctor-healthcare-appointment-flyer-design-template-07e2e45ea3ef487b5cf7e407a189b29b_screen.jpg?ts=1668194750",
      "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/online-doctors-hospital-appointment-flyer-design-template-7ca06f78f62b55ba9d941148855410ce_screen.jpg?ts=1678795240"
    ];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 15),
          child: Column(
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 10,),
                  Icon(
                    Icons.location_on_sharp
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              InkWell(
                splashFactory: NoSplash.splashFactory,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchPage()));
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
                height: size.height*0.03,
              ),
              ListTile(
                leading: Icon(Icons.video_call,size: size.width*0.07,),
                title: Text("Instant Video Consultations with Speacialists",style: TextStyle(fontWeight: FontWeight.bold,fontSize: size.width*0.05),),
              ),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: size.height*0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: size.height*0.25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(size.width*0.04),
                              image: DecorationImage(image: NetworkImage('http://content.health.harvard.edu/wp-content/uploads/2023/04/1e3490fb-533a-4e3e-9c7b-90bcc279d174.jpg'),fit: BoxFit.fill),
                            ),
                          ),
                          Text("General Physician",style: TextStyle(fontSize: size.width*0.05,fontWeight: FontWeight.bold),),
                          Text("Consult for Cough,Fever,Pain,Headache,Tiredness and More ..."),
                          Align(alignment: Alignment.center,child: Text("Available in 3 mins",style: TextStyle(color: green),),),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width*0.02,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: size.height*0.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: size.height*0.25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(size.width*0.04),
                              image: DecorationImage(image: NetworkImage('https://www.healthychildren.org/SiteCollectionImagesArticleImages/doc_neurology_child.jpg'),fit: BoxFit.fill),
                            ),
                          ),
                          Text("Child Specialist",style: TextStyle(fontSize: size.width*0.05,fontWeight: FontWeight.bold),),
                          Text("Consult for child having Cough,Fever,Headache,Tiredness and More ...",),
                          Align(alignment: Alignment.center,child: Text("Available in 3 mins",style: TextStyle(color: green),),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height*0.0175,
              ),
              Align(alignment: Alignment.centerLeft,child: Text("Featured Services",style: TextStyle(fontWeight: FontWeight.bold,fontSize: size.width*0.055),),),
              SizedBox(
                height: size.height*0.0175,
              ),
              SizedBox(
                height: size.height*0.3,
                child: ListView.builder(itemCount: list.length,scrollDirection: Axis.horizontal,itemBuilder: (context,index){
                  return Container(
                    margin: EdgeInsets.only(right: size.width*0.04),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(size.width*0.04),
                      image: DecorationImage(image: NetworkImage(list[index],),fit: BoxFit.fill,),
                    ),
                    width: size.width*0.45,
                    height: size.height*0.3,
                  );
                })
              ),
              SizedBox(
                height: size.height*0.03,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>BookAppointment()));
                    },
                    child: Card(
                      elevation: 4.0,
                      child: SizedBox(
                        width: size.width*0.43,
                        height: size.height*0.3,
                        child: Column(
                          children: [
                            Container(
                              height: size.height*0.15,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(size.width*0.04),topRight: Radius.circular(size.width*0.04)),
                                image: const DecorationImage(image: NetworkImage('https://as1.ftcdn.net/v2/jpg/02/60/04/08/1000_F_260040863_fYxB1SnrzgJ9AOkcT0hoe7IEFtsPiHAD.jpg'),fit: BoxFit.fill),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: size.width*0.02),
                              child: Text("Book Appointment",style: TextStyle(fontWeight: FontWeight.bold,fontSize: size.width*0.06),),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: size.width*0.02),
                              child: Text("Confirmed Appointments",style: TextStyle(color: Colors.grey,fontSize: size.width*0.04),),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 4.0,
                    child: SizedBox(
                      width: size.width*0.43,
                      height: size.height*0.3,
                      child: Column(
                        children: [
                          Container(
                            height: size.height*0.15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(size.width*0.04),topRight: Radius.circular(size.width*0.04)),
                              image: DecorationImage(image: NetworkImage('https://media.gettyimages.com/id/1288812900/photo/you-deserve-a-doctor-who-will-take-your-health-seriously.jpg?s=612x612&w=0&k=20&c=p3nv-VXJPkCdwolurpxoI8F8lJTSsXNLWKQYZH94PCo='),fit: BoxFit.fill),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: size.width*0.02),
                            child: Text("Instant Video Consults",style: TextStyle(fontWeight: FontWeight.bold,fontSize: size.width*0.06),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: size.width*0.02),
                            child: Text("Connect within 60 seconds",style: TextStyle(color: Colors.grey,fontSize: size.width*0.04),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height*0.045,
              ),
            ],
          ),
        ),
      )
    );
  }
}

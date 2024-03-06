import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartdash/model/usermodel.dart';

class FireStoreServices {
  /*static List listOfDoctors = [
    //1
    {
      "name": "Dr. Siddhartha Mukherjee",
      "category": "General Physician",
      "exp": 4,
      "fees": 35000,
      "rating": 3.87,
      "imgUrl":
          "https://firebasestorage.googleapis.com/v0/b/vegaproject-43a36.appspot.com/o/doctors%2Fdoc1.jpg?alt=media&token=a5084dee-b29e-406b-83d8-78b5e91e9e67",
      "desc":
          '''Siddhartha is a physician, biologist, and author. Mukherjee writes for The New Yorker and is a columnist in The New York Times.He is described as part of a select group of doctor-writers who have transformed the public discourse on human health. He has also allowed a generation of readers a rare and intimate glimpse into the life of science and medicine. He is best known for his 2010 book, The Emperor of All Maladies: A Biography of Cancer, which won notable literary prizes. His research concerns the physiology of cancer cells, immunological therapy for blood cancers, and the discovery of bone- and cartilage-forming stem cells in the vertebrate skeleton.The Government of India conferred on him its fourth highest civilian award, the Padma Shri, in 2014.  '''
    },
    //2
    {
      "name": "Dr. Naresh Trehan",
      "category": "General Physician",
      "exp": 7,
      "fees": 25000,
      "rating": 3.5,
      "imgUrl":
          "https://firebasestorage.googleapis.com/v0/b/vegaproject-43a36.appspot.com/o/doctors%2Fdoc2.jpg?alt=media&token=414b3595-a237-411d-a6ea-7bbe75cc2df9",
      "desc":
          '''Siddhartha is a physician, biologist, and author. Mukherjee writes for The New Yorker and is a columnist in The New York Times.He is described as part of a select group of doctor-writers who have transformed the public discourse on human health. He has also allowed a generation of readers a rare and intimate glimpse into the life of science and medicine.He is best known for his 2010 book, The Emperor of All Maladies: A Biography of Cancer, which won notable literary prizes. His research concerns the physiology of cancer cells, immunological therapy for blood cancers, and the discovery of bone- and cartilage-forming stem cells in the vertebrate skeleton.The Government of India conferred on him its fourth highest civilian award, the Padma Shri, in 2014. '''
    },
    //3
    {
      "name": "Dr. Sudhansu Bhattacharyya ",
      "category": "Child Specialist",
      "exp": 4,
      "fees": 23750,
      "rating": 3.25,
      "imgUrl":
          "https://firebasestorage.googleapis.com/v0/b/vegaproject-43a36.appspot.com/o/doctors%2Fdoc3.jpg?alt=media&token=b0fd570d-8092-4c63-802d-a81be151ade4",
      "desc":
          "Sudhansu is a renowned Cardiac surgeon in Mumbai. He currently practices at Sir HN Reliance Foundation Hospital and research center in Mumbai.Bhattacharya is credited for pioneering the technique of total arterial revascularization with LIMA-RIMA technique grafting in a beating heart, in the world. He has performed over 5000 cases using this technique since 1998.In his career spanning 38 years, Sudhansu has gained proficient skills and knowledge in surgery which has earned him various recognitions and awards.Most notably, the prestigious Solomon Victor Memorial Award which is given only to those who have made original contributions in the field of CVTS was conferred to him in 2010 for this innovation. "
    },
    //4
    {
      "name": "Dr.  Surbhi Anand",
      "category": "Dental Care",
      "exp": 2,
      "fees": 27950,
      "rating": 3.51,
      "imgUrl":
          "https://firebasestorage.googleapis.com/v0/b/vegaproject-43a36.appspot.com/o/doctors%2Fdoc4.jpg?alt=media&token=bec1dfee-fa29-4c5c-88f2-bde5a023e3eb",
      "desc":
          "Surbhi Anand is a practicing Endodontist and Conservative Dentist.After completing her bachelor’s degree, she pursued a master’s course in Endodontology. She is well known for specializing in Single sitting Root Canal Treatment, cosmetic dentistry, and giving a smile makeover.She has been associated as a senior consultant with healthcare setups including Fortis Hospital and Columbia Asia Hospital and has a vast consultation base to various reputable dental practices in Delhi/NCR. In her career, Surbhi has published more than half a dozen international and national research publications. She was also conferred with the best scientific paper presentation award at an international conference held in Dubai. She is a firm believer in rendering quality dental care with compassion."
    },
    //5
    {
      "name": "Dr. Ashish Sabharwal",
      "category": "Mental Wellness",
      "exp": 3,
      "fees": 19999,
      "rating": 3.0,
      "imgUrl":
          "https://firebasestorage.googleapis.com/v0/b/vegaproject-43a36.appspot.com/o/doctors%2Fdoc5.jpg?alt=media&token=90ee3041-b02b-40b8-bafb-5393ab8e5e11",
      "desc":
          "Sabharwal is a Senior Consultant in Urology, Andrology, and Robotic Surgery. He is Board Certified in Urology and practices in Okhla, Delhi. In 2011, he completed a three-year fellowship training in endourology and robotic prostate surgery at Jackson Health System in Miami, Florida.He has an E.C.F.M.G certificate from the USA and holds an unrestricted license to practice medicine and urology in Florida, USA.During this training, he was involved in more than 1,000 laser and robotic prostate surgeries and handled several cases of kidney stones using laser treatment.Ashish has been certified as a Proctor for Robotic surgery in India by the American Company for Da Vinci Robot: an innovative surgical technology. This makes him one of three certified Proctors for Robotic surgery in India. "
    },
    //6
    {
      "name": "Dr.  Sanjay Sachdeva",
      "category": "Women's Health",
      "exp": 4,
      "fees": 21000,
      "rating": 2.73,
      "imgUrl":
          "https://firebasestorage.googleapis.com/v0/b/vegaproject-43a36.appspot.com/o/doctors%2Fdoc6.jpg?alt=media&token=4678b233-c7ae-45a4-b474-363cb73ccac9",
      "desc":
          "Sanjay is one of the best ENT (Ear, Nose, Throat) Surgeons in Delhi with a specialization in Otorhinolaryngology.Otorhinolaryngology is a surgical subspecialty within medicine that deals with the surgical and medical management of conditions of the head and neck. He is recognized as an expert in the area of Endoscopic Minimally Invasive Approaches for Skull Base Surgery. "
    },
    //7
    {
      "name": "Dr. Aditya Gupta",
      "category": "Ear,Nose,Throat",
      "exp": 1,
      "fees": 27000,
      "rating": 2.33,
      "imgUrl":
          "https://firebasestorage.googleapis.com/v0/b/vegaproject-43a36.appspot.com/o/doctors%2Fdoc7.jpg?alt=media&token=e854b359-cc3e-42b0-8ebe-1dea197062e0",
      "desc":
          "Aditya is an accomplished Neurosurgeon and has been a graduate and topper at All India Institute of Medical Sciences, New Delhi.He is presently practicing in the World’s renowned Artemis Hospital, Gurgaon. He also co-founded the Institute of Neurosciences at Medanta Hospital. Aditya is known for having developed excellent surgical techniques for a wide variety of brain tumors, with an emphasis on microsurgery and radiosurgery."
    },
    //8
    {
      "name": "Dr. H. S. Chhabra",
      "category": "Ear,Nose,Throat",
      "exp": 1.5,
      "fees": 29000,
      "rating": 3.33,
      "imgUrl":
          "https://firebasestorage.googleapis.com/v0/b/vegaproject-43a36.appspot.com/o/doctors%2Fdoc8.jpg?alt=media&token=0fe560af-9464-44be-816f-b816cceb302c",
      "desc":
          "Chhabra is one of the coveted & most experienced surgeons in the field of Spine Surgery in India. He is well known for pioneering Laser and Endoscopic disc surgery in India.Chhabra is an opinion leader in the development of spinal endoscopes and other spinal implants and instruments, manufactured by famous international companies. In addition to the spine, Chhabra also performs complicated trauma surgery, like pelvic acetabular & intraarticular comminuted fractures and joint replacement surgeries."
    },
    //9
    {
      "name": "Dr. Gaurav Kharya",
      "category": "Women's Health",
      "exp": 3.5,
      "fees": 31750,
      "rating": 3.91,
      "imgUrl":
          "https://firebasestorage.googleapis.com/v0/b/vegaproject-43a36.appspot.com/o/doctors%2Fdoc9.jpg?alt=media&token=23ee76f5-20b5-4127-a5e7-7624179e48e5",
      "desc":
          "Gaurav is a Senior Consultant and current Head of Pediatric Hemato-oncology Immunology and Bone Marrow Transplant at Artemis Hospitals, Gurgaon.In his career, he has accrued vast skills in transplanting children with various blood disorders benign or malignant, and immunological diseases. Kharya is credited for doing the first haploidentical bone marrow transplant for sickle cell disease in India.He is also famed for doing in-vitro TCR alpha beta CD 19 depleted haploidentical BMT in a 4-month-old baby suffering from severe combined immunodeficiency, which is the smallest child transplanted in the country so far."
    },
    //10
    {
      "name": "Dr. Mohamed Rela",
      "category": "Dental Care",
      "exp": 4.5,
      "fees": 33750,
      "rating": 4.13,
      "imgUrl":
          "https://firebasestorage.googleapis.com/v0/b/vegaproject-43a36.appspot.com/o/doctors%2Fdoc10.png?alt=media&token=33fb0709-4612-4a93-bbb6-b0b18541fe45",
      "desc":
          "Mohamed is a renowned surgeon known for his expertise in liver transplantation and hepatopancreatobiliary surgery. He has performed more than 3000 liver transplant surgeries so far.He was recognized in the Guinness Book of Records in 2000. This was after a team led by him had done successful liver transplantation for a five-day-old baby girl in 1997. Other commendable works by him include: He carried out the first living-related Liver Transplant on a patient with acute Liver Failure in the UK."
    },
  ];*/

  static Future<void> addUser(UserModel user) async {
    await FirebaseFirestore.instance.collection("Users").add(user.toJson());
  }

  static Future<List> getListOfDoctors() async
  {
    final get = await FirebaseFirestore.instance.collection("doctors").doc("doctors").get();
    List listOfDoctors = get.exists ? get.data()!["listOfDoctors"] : [];
    return listOfDoctors;
  }
}

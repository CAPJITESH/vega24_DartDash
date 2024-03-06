  import 'package:flutter/material.dart';

class BookAppointment extends StatefulWidget {
    const BookAppointment({super.key});
  
    @override
    State<BookAppointment> createState() => _BookAppointmentState();
  }
  
  class _BookAppointmentState extends State<BookAppointment> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body:  Center(
          child: Text("Book Appointment Page"),
        )
      );
    }
  }
  
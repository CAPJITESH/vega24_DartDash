import 'package:dartdash/constants/constants.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final double Screenheight = MediaQuery.of(context).size.height;
    final double Screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50.0), // Customize the height here
        child: AppBar(
          title: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    size: 15,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    'Location',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
          shadowColor: black,
          elevation: 2,
          backgroundColor: white,
        ),
      ),
      // body:
    );
  }
}

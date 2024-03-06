import 'package:flutter/material.dart';

class DoctorsInfo extends StatefulWidget {
  final String type;

  const DoctorsInfo({Key? key, required this.type}) : super(key: key);

  @override
  State<DoctorsInfo> createState() => _DoctorsInfoState();
}

class _DoctorsInfoState extends State<DoctorsInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Type: ${widget.type}'),
      ),
    );
  }
}

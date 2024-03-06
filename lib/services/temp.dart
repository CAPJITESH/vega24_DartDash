import 'package:flutter/material.dart';

class TempService extends StatefulWidget {
  const TempService({super.key});

  @override
  State<TempService> createState() => _TempServiceState();
}

class _TempServiceState extends State<TempService> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("TempService"),
    );
  }
}

import 'package:flutter/material.dart';

class TempPage extends StatefulWidget {
  const TempPage({Key? key}) : super(key: key);

  @override
  State<TempPage> createState() => _TempPageState();
}

class _TempPageState extends State<TempPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Hello!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
        ),
      ),
    );
  }
}

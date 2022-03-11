import 'package:flutter/material.dart';

class Dummy extends StatelessWidget {
  const Dummy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 200.0,
      height: 500.0,
          color: Colors.red,
      child: const Card(child: Text('Hello World!')),
    ));
  }
}

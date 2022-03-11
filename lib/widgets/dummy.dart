import 'package:flutter/material.dart';

class Dummy extends StatelessWidget {
  const Dummy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: SizedBox(
      width: 200.0,
      height: 500.0,
      child: Card(child: Text('Hello World!')),
    ));
  }
}

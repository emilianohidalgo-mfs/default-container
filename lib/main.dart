import 'package:flutter/material.dart';
import 'package:untitled/palette.dart';
import 'package:untitled/widgets/default_container.dart';
import 'package:untitled/widgets/dummy.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Millicom Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Palette.millicomPalette,
          appBarTheme:
              const AppBarTheme(iconTheme: IconThemeData(color: Colors.black))),
      home: const MyHomePage(title: 'Millicom Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const DefaultContainer(content: Dummy());
  }
}

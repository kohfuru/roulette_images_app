import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Roulette Images'),
        ),
      ),
    );
  }
}

class RouletteImagesState extends State<RouletteImages> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

}

class RouletteImages extends StatefulWidget {
  const RouletteImages({super.key});

  @override
  RouletteImagesState createState() => RouletteImagesState();
}


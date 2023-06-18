// ignore_for_file: non_constant_identifier_names

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
      body: const Center(
        child: RouletteImages(),
      )
      ),
    );
  }
}

class RouletteImagesState extends State<RouletteImages> {
  String buttonText = 'start';
  String image_url = 'images/image0.jpg';

  void onPressed() {
    setState(() {
      buttonText == 'start' ? buttonText = 'stop' : buttonText = 'start';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          width: double.infinity,
          height: 600,
          child: Image.asset(image_url),
        ),
        ElevatedButton(onPressed: onPressed, child: Text(buttonText))
      ],
    );
  }

}

class RouletteImages extends StatefulWidget {
  const RouletteImages({super.key});

  @override
  RouletteImagesState createState() => RouletteImagesState();
}


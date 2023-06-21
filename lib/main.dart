// ignore_for_file: non_constant_identifier_names

import 'dart:async';

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
        child: MyHomePage(),
      )
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String buttonText = 'start';
  bool isStart = false;
  String display_image = 'images/image0.jpg';
  int index = 0;
  // ignore: prefer_typing_uninitialized_variables
  var timer;

  void onPressed_reset() {
    setState(() {
      //ルーレット中は動作ができないようにする
      display_image = 'images/image0.jpg';
    });
  }

  void startTimer() {
    setState(() {
      isStart = !isStart;

      if (isStart) {
        timer = Timer.periodic(const Duration(milliseconds: 100), changeImage);
        buttonText = 'stop';
      } else {
        setState(() {
          timer.cancel();
          buttonText = 'start';
        });
      }
    });
  }

  void changeImage(Timer timer) {
    setState(() {
      index++;
      if (index >= 15) {
        index = 1;
      }
      display_image = 'images/image$index.jpg';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 600,
          child: Image.asset(display_image),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: onPressed_reset, child: const Text('reset')),
            ElevatedButton(
              onPressed: startTimer,
              child: Text(buttonText)
            ),
          ],
        ),
      ],
    );
  }
}
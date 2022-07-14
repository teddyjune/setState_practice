import 'dart:math';

import 'package:flutter/material.dart';

// 화이팅
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int randomNumber = 0;
  bool isLoading = false;
  List<String> myList = ["홍길동", "이순신", "정조", "장영실", "노비", "김삿갓"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.key_sharp),
        title: const Text('당신의 전생을 알려드립니다'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "당신의 전생은?",
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: increase,
            child: const Text(
              "나와랏!",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Center(
            child: _buildText(),
          ),
        ],
      ),
    );
  }

  Widget _buildText() {
    if (isLoading) {
      return const CircularProgressIndicator();
    }

    return Text(
      myList[randomNumber],
      style: const TextStyle(fontSize: 80),
    );
  }

  Future<void> increase() async {
    setState(() {
      isLoading = true;
    });
    print('click');

    await Future.delayed(const Duration(seconds: 3));

    setState(() {
      randomNumber = Random().nextInt(6);
      isLoading = false;
    });
  }
}

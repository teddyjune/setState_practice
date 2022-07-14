import 'dart:math';

import 'package:flutter/material.dart';
import 'package:practice_future/future/exam_5.dart';

class Exam2 extends StatefulWidget {
  const Exam2({Key? key}) : super(key: key);

  @override
  State<Exam2> createState() => _Exam2State();
}

class _Exam2State extends State<Exam2> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('show your exlife'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("당신의 전생은?"),
            Column(
              children: [
                showLoading();
                showExlife();
              ],
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Text('장영실');
                  });
                },
                child: Text("나와랏"!)),
          ],
        ),
      ),
    );
  }
}

Future<String> showLoading() async {
  setSatate(() {
    isLoading = true;
  });
  await future.delayed(Duration(seconds: 3));

}

Widget showExlife() {
  if (isLoading == true) {
    const CircularProgressIndicator();
  } else {
    showExlife();
  }
}

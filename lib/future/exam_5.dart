import 'package:flutter/material.dart';

class Exam5 extends StatefulWidget {
  const Exam5({Key? key}) : super(key: key);

  @override
  State<Exam5> createState() => _Exam5State();
}

class _Exam5State extends State<Exam5> {
  int count = 0;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("전생을 알려드립니다"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('0'),
            Column(
              children: [
                if (isLoading)
                  const CircularProgressIndicator()
                else
                  Text('장영실'),
              ],
            ),
            ElevatedButton(onPressed: () {
              showLoading();
              showExlife();
            }, child: Text("당신의 전생은?")),
          ],
        ),
      ),
    );
  }
}

Future<String> () {
  setState(() {
    return "장영실";
  })

  );
}

void setState(String showExlife() param0) {
}

Future showLoading() async {
  await Future.delayed(Duration(seconds: 3));
}
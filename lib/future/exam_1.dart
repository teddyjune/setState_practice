import 'package:flutter/material.dart';

class FutureExam extends StatelessWidget {
  const FutureExam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('future 연습'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                //1초 대기
                for (int i = 0; i < 3; i++) {
                  await Future.delayed(const Duration(seconds: 1));
                  print('Hello');
                }
              },
              child: Text('연습 1'),
            ),
            ElevatedButton(
              onPressed: () => exam3(),
              child: Text('연습 3'),
            ),
            ElevatedButton(
              onPressed: () async {
                for (int i = 5; i > 0 ; i--) {
                  await Future.delayed(const Duration(seconds: 1));
                  print(i);
              }},
              child: Text('연습 4'),
            ),
          ],
        ),
      ),
    );
  }
  Future exam3() async {
    print('다운로드 시작!');
    await Future.delayed(const Duration(seconds: 1));
    print('초기화 중');
    await Future.delayed(const Duration(seconds: 1));
    print('핵심파일 로드 중...');
    await Future.delayed(const Duration(seconds: 3));
    print('다운로드 완료');
  }

}

import 'dart:convert';

import 'package:flutter/material.dart';

class JsonExam extends StatefulWidget {


  const JsonExam({Key? key}) : super(key: key);

  @override
  State<JsonExam> createState() => _JsonExamState();
}

class _JsonExamState extends State<JsonExam> {
  Map<String, dynamic> superhero = {};

  @override
  void initState() {
    super.initState();
    initData();
  }

  Future initData() async {
superhero = await getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('json을 알아보자'),
      ),
      body: Center(
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(''),
              );
            }),
      ),
    );
  }
}

class superHero {
  final String superhero;
  final String alter_ego;
  final String characters;


}

Future<Map<String, dynamic>> getData() async {

}


Map<String, dynamic> json =
{
  "superhero": "Batman",
  "publisher": "DC Comics",
  "alter_ego": "Bruce Wayne",
  "first_appearance": "Detective Comics #27",
  "characters": "Bruce Wayne"
}
,

{
"superhero":"Wonder Woman",
"publisher":"DC Comics",
"alter_ego":"Princess Diana",
"first_appearance":"All Star Comics #8",
"characters":"Princess Diana"
},

{
"superhero":"Flash",
"publisher":"DC Comics",
"alter_ego":"Jay Garrick",
"first_appearance":"Flash Comics #1",
"characters":"Jay Garrick, Barry Allen, Wally West, Bart Allen"
}

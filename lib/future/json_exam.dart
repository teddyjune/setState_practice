import 'package:flutter/material.dart';

class JsonExam extends StatefulWidget {
  const JsonExam({Key? key}) : super(key: key);

  @override
  State<JsonExam> createState() => _JsonExamState();
}

class _JsonExamState extends State<JsonExam> {
  Map<String, dynamic>? powers;
  List<Map<String, dynamic>> members = [];

  @override
  void initState() {
    super.initState();
    initData();
  }

  Future initData() async {
    powers = (await getMembers()) as Map<String, dynamic>?;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("슈퍼히어로를 알아봅시다"),
      ),
      body: Center(
        child: powers == null
            ? const CircularProgressIndicator()
            : Container(
          child: Text(members['powers']),
        ),
      ),
    );
  }
}

Future<List<Map<String, dynamic>>> getMembers() async {
  await Future.delayed(const Duration(seconds: 2));
  List<Map<String, dynamic>> members = data['members'];
  return members;
}

Map<String, dynamic> data = {
  "squadName": "Super Hero Squad",
  "homeTown": "Metro City",
  "formed": 2016,
  "secretBase": "Super tower",
  "active": true,
  "members": [
    {
      "name": "Molecule Man",
      "age": 29,
      "secretIdentity": "Dan Jukes",
      "powers": [
        "Radiation resistance",
        "Turning tiny",
        "Radiation blast"
      ]
    },
    {
      "name": "Madame Uppercut",
      "age": 39,
      "secretIdentity": "Jane Wilson",
      "powers": [
        "Million tonne punch",
        "Damage resistance",
        "Superhuman reflexes"
      ]
    },
    {
      "name": "Eternal Flame",
      "age": 1000000,
      "secretIdentity": "Unknown",
      "powers": [
        "Immortality",
        "Heat Immunity",
        "Inferno",
        "Teleportation",
        "Interdimensional travel"
      ]
    }
  ]
}
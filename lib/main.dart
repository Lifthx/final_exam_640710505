import 'package:final_exam_640710505/answer1.dart';
import 'package:flutter/material.dart';
import 'answer2.dart';
import 'answer1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return /*const*/ MaterialApp(home: Answer2());
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notick/taskcontroller.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
  Get.put(TaskController());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notick',
      home: HomePage(),
    );
  }
}

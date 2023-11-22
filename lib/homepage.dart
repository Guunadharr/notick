import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:notick/custometextfield.dart';
import 'package:notick/taskcontroller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Notick'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextField(
                    obscureText: false,
                    controller: Get.find<TaskController>().taskController,
                    hintTextt: 'Enter task'),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Get.find<TaskController>().addTask();
                  },
                  child: Text('Add Task'),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

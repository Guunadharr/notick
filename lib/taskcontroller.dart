import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';

class TaskController extends GetxController {
  final TextEditingController taskController = TextEditingController();

  void addTask() {
    if (taskController.text.isNotEmpty) {
      String taskText = taskController.text; // Save the task text
      taskController.clear();
      showNotification(taskText); // Pass the task to showNotification
    }
  }

  Future<void> showNotification(String task) async {
    FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();

    const AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      'your channel id',
      'your channel name',
      icon: "@mipmap/ic_launcher",
      importance: Importance.max,
      priority: Priority.high,
    );

    const NotificationDetails platformChannelSpecifics =
        NotificationDetails(android: androidPlatformChannelSpecifics);

    int notificationId = task.hashCode;

    await flutterLocalNotificationsPlugin.show(
      notificationId,
      '',
      'Task: $task', // Include the task in the notification content
      platformChannelSpecifics,
    );
  }
}

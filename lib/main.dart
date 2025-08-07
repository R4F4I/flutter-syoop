import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syoop/home/home_controller.dart';
import 'package:syoop/my_app.dart';

void main() {
  Get.put(HomeController());
  runApp(const MyApp());
}

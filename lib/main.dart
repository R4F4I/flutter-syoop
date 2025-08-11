import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syoop/controllers/home_controller.dart';
import 'package:syoop/my_app.dart';

void main() {
  Get.put(FoodHomeController());
  runApp(const MyApp());
}

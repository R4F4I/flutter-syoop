import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syoop/home/home_controller.dart';
import 'package:syoop/my_app.dart';

void main() {
  Get.put(CarHomeController());
  Get.put(FoodHomeController());
  runApp(const MyApp());
}

// will control all the pages

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syoop/home/car_bookings.dart';
import 'package:syoop/home/car_rental_home.dart';
import 'package:syoop/home/food_home.dart';
import 'package:syoop/home/food_orders.dart';
import 'package:syoop/home/food_profile.dart';

class CarHomeController extends GetxController {
  
  RxInt selectedIndex = 0.obs; // RxInt is a class 

  final List<Widget> pages = [
    const CarRentalHome(),
    const CarBookings(),
    const Scaffold(body: Center(child: Text('Notifications Page'))),
    const Scaffold(body: Center(child: Text('Profile Page'))),
  ];

  void changePage(int index) {
    selectedIndex.value = index; // .value is an attribute of RxInt that holds the actual value
  }

}

// bottom nav bar controller for the food page

class FoodHomeController extends GetxController {
  RxBool isLoading=true.obs;
  RxInt selectedIndex = 0.obs; // RxInt is a class 

  final List<Widget> pages = [
    FoodHome(),
    FoodOrders(),
    const Scaffold(body: Center(child: Text('history Page'))),
    FoodProfile(),
  ];

  void changePage(int index) {
    selectedIndex.value = index; // .value is an attribute of RxInt that holds the actual value
  }
  void fetchData() async {
    isLoading.value = true;
    await Future.delayed(Duration(seconds: 2));
    isLoading.value = false;
  }
  

  
}
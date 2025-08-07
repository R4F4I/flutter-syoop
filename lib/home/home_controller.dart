// will control all the pages

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syoop/home/car_rental_home.dart';

class HomeController extends GetxController {
  
  RxInt selectedIndex = 0.obs; // RxInt is a class 

  final List<Widget> pages = [
    const CarRentalHome(),
    const Scaffold(body: Center(child: Text('Bookings Page'))),
    const Scaffold(body: Center(child: Text('Notifications Page'))),
    const Scaffold(body: Center(child: Text('Profile Page'))),
  ];

  void changePage(int index) {
    selectedIndex.value = index; // .value is an attribute of RxInt that holds the actual value
  }

  

  
}
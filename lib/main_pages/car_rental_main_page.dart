// will display all the car rental related pages (which are stateless widget)

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syoop/controllers/home_controller.dart';
import 'package:syoop/widgets/bottom_nav_bar.dart';

class CarRentalMainPage extends StatelessWidget {
  // home controller holds logic 
  final CarHomeController _model = Get.find<CarHomeController>();
   CarRentalMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => _model.pages[_model.selectedIndex.value]), // the car rental page's body according the _model's selected index value 
      bottomNavigationBar:BottomNavBar(
        icon0: Icons.home_outlined,
        icon1: Icons.calendar_month_outlined,
        icon2: Icons.notifications_outlined,
        icon3: Icons.person_outline,
      ),
    );
  }

}
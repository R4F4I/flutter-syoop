// will display all the car rental related pages (which are stateless widget)

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syoop/home/home_controller.dart';
import 'package:syoop/widgets/bottom_nav_bar.dart';

class FoodMainPage extends StatelessWidget {
  // home controller holds logic 
  final FoodHomeController _model = Get.find<FoodHomeController>();
   FoodMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => _model.pages[_model.selectedIndex.value]), // the car rental page's body according the _model's selected index value 
      bottomNavigationBar:BottomNavBar(
        icon0: Icons.home_outlined,
        icon1: Icons.checklist_rtl_outlined,
        icon2: Icons.history,
        icon3: Icons.person_outline,
      ),
    );
  }

}
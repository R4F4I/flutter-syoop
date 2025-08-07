import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syoop/home/home_controller.dart';

class BottomNavBar extends StatelessWidget {
  final _model=Get.find<HomeController>();
   BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    const unselectedColor = Color(0xffcccccc);
    const selectedColor = Colors.white;
      

    // The Obx will rebuild the bar whenever selectedIndex changes.
    // obx used due to rxint
    return Obx(
      () => Container(
        height: 60,
        decoration: const BoxDecoration(
          color: Color(0xff0025A8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(
              icon: Icons.home,
              index: 0,
              onTap: () => _model.changePage(0),
              selectedColor: selectedColor,
              unselectedColor: unselectedColor,
            ),
            _buildNavItem(
              icon: Icons.calendar_month_outlined,
              index: 1,
              onTap: () =>  _model.changePage(1),
              selectedColor: selectedColor,
              unselectedColor: unselectedColor,
            ),
            _buildNavItem(
              icon: Icons.notifications,
              index: 2,
              onTap: () =>  _model.changePage(2),
              selectedColor: selectedColor,
              unselectedColor: unselectedColor,
            ),
            _buildNavItem(
              icon: Icons.person_outline,
              index: 3,
              onTap: () =>  _model.changePage(3),
              selectedColor: selectedColor,
              unselectedColor: unselectedColor,
            ),
          ],
        ),
      ),
    );
  }
    Widget _buildNavItem(
      {required IconData icon, required int index, required VoidCallback onTap, required Color selectedColor, required Color unselectedColor}) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(icon, size: 30, color:  _model.selectedIndex.value == index ? selectedColor : unselectedColor),
    );
  }
}



  // Helper widget for a single navigation item.

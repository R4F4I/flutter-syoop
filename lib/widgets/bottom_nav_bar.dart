import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syoop/home/home_controller.dart';

class BottomNavBar extends StatelessWidget {
  final _model=Get.find<CarHomeController>();
  final IconData? icon0;
  final IconData? icon1;
  final IconData? icon2;
  final IconData? icon3;

   BottomNavBar({
    super.key,
    this.icon0 = Icons.abc,
    this.icon1 = Icons.abc,
    this.icon2 = Icons.abc,
    this.icon3 = Icons.abc,
  
    
    
    });

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
              icon:  icon0!,
              index: 0,
              onTap: () {
                Get.until((route) => route.isFirst); // This will pop all routes until the first one // allows the bottom nav bar present on internal pages (the car details page within the cars home page, to route to the main pages)
                _model.changePage(0);
              },
              selectedColor: selectedColor,
              unselectedColor: unselectedColor,
            ),
            _buildNavItem(
              icon:  icon1!,
              index: 1,
              onTap: () { 
                Get.until((route) => route.isFirst);
                _model.changePage(1);
              },
              selectedColor: selectedColor,
              unselectedColor: unselectedColor,
            ),
            _buildNavItem(
              icon:  icon2!,
              index: 2,
              onTap: () { 
                Get.until((route) => route.isFirst);
                _model.changePage(2);
              },
              selectedColor: selectedColor,
              unselectedColor: unselectedColor,
            ),
            _buildNavItem(
              icon:  icon3!,
              index: 3,
              onTap: () { 
                Get.until((route) => route.isFirst);
                _model.changePage(3);
              },
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

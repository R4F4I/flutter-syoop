import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syoop/controllers/home_controller.dart';
import 'package:syoop/home/car_detail_view.dart';
import 'package:syoop/home/car_rental_home.dart';
import 'package:syoop/home/food_home.dart';
import 'package:syoop/home/home.dart';
import 'package:syoop/main_pages/car_rental_main_page.dart';
import 'package:syoop/main_pages/food_main_page.dart';
import 'package:syoop/signup_pages/signup_page_entrepreneur.dart';
import 'package:syoop/splash_screen.dart';

import 'signup_pages/introduction_pages/intro.dart';
// import 'package:syoop/signup_pages/signup_page_user.dart';
// import 'signup_pages/signup_page_entrepreneur.dart';

// actual page to default page 
// import 'package:syoop/splash_screen.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   
    return GetMaterialApp(
      title: 'Free Weather App',
      debugShowCheckedModeBanner: false,
      initialRoute: "/", // Define your initial route here
      getPages: [
        GetPage(name: "/", page: () => FoodMainPage()) // first page is home
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
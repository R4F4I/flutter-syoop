import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syoop/main_pages/car_rental_main_page.dart'; // after intro, we will go to car rental main page,
import 'package:syoop/widgets/blue_button.dart';

// the intro will have 4 widgets, image, title description, and a button


List<String> name = [
  "assets/images/intro_1.png",
  "assets/images/intro_2.png",
  "assets/images/intro_3.png",
  "assets/images/intro_4.png",
  "assets/images/intro_5.png",
  "assets/images/intro_6.png",
  "assets/images/intro_7.png",
]; 

List<String> title = [
  "Welcome to Syoop",
  "Order Food and groceries",
  "Rental services",
  "Order ride",
  "Transportation services",
  "Order medicine",
  "Payment",
];

List<String> description = [
  "Syoop is a platform that connects you with local businesses and services.",
  "Order food and groceries from your favorite restaurants and stores.",
  "Find rental services for cars, bikes, and more.",
  "Order a ride with just a few taps.",
  "Get transportation services for your needs.",
  "Order medicine from local pharmacies.",
  "Make payments easily and securely."
];

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: PageView.builder(
          // physics: NeverScrollableScrollPhysics(),
          itemCount:7, 
          itemBuilder: (context,index) { 
            switch (index) {
              case 0:
                return introPage(context,index);
              case 1:
                return introPage(context,index);
              case 2:
                return introPage(context,index);
              case 3:
                return introPage(context,index);
              case 4:
                return introPage(context,index);
              case 5:
                return introPage(context,index);
              case 6:
                return introPage(context,index);
              default:
                return SizedBox.shrink();
            }
          }
        ),
      ),),
    );
  }

  Widget introPage(BuildContext context, int index) {

    return Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.25,),
          Image.asset(name[index], height: 250, width: 250,),
          Text(title[index],style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, fontFamily: 'Roboto')),
          SizedBox(height: 3,),
          Text(description[index],style: TextStyle(fontSize: 16, color: Colors.grey, fontFamily: 'Roboto')),
          SizedBox(height: 20,),  
          index == 6?
          BlueButton(
            onPressed: (){
              print("Next tapped");
              Get.to(() => CarRentalMainPage());
            }, 
            text: 'Next', 
            minWidth: 168,
          ): SizedBox.shrink()
      
       ], 
      );
  }
}
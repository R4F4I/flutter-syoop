import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syoop/signup_pages/login.dart';
import 'package:syoop/widgets/blue_button.dart';
import 'package:syoop/widgets/terms_and_cond.dart';

import 'signup_pages/signup_page1.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            backgroundColor: const Color(0xFF0025A8),
            radius: 90,
            child: Image.asset("images/splash_screen_image.png", fit: BoxFit.fitWidth,),
          ),
          Text(
            'Syooop',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, fontFamily: 'Roboto'),
          ),

          Column(
            
            children: [
              BlueButton(
                text: "Log In",
                fontSize: 20,
                horizontalPadding: MediaQuery.of(context).size.width * 0.54,
                verticalPadding: 20,
                onPressed: () {
                  print("Log in tapped");
                  Get.to(() => Login());
                },
              ),
              
              SizedBox(
                height: 15,
              ),
              BlueButton(
                onPressed: (){
                  print("Log in tapped");
                  Get.to(()=> SignupPage1());
                },
                customText: Text("Sign in", style: TextStyle(fontFamily: 'Roboto',fontSize: 20, color: const Color(0xFF0025A8))),
                horizontalPadding: MediaQuery.of(context).size.width * 0.54,
                verticalPadding: 20,
                customColor: Colors.transparent,

              ),
              SizedBox(height: 7,),
              TermsAndCond()
            ],
          ),
        ],
      ),
      ),
    );
  }
}


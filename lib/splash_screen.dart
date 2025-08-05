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
            'Syoop',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, fontFamily: 'Roboto'),
          ),

          Column(
            
            children: [
              BlueButton(
                text: "Log In",
                minWidth: MediaQuery.of(context).size.width * 0.65,
                onPressed: () {
                  print("Log in tapped");
                  Get.to(() => Login());
                },
              ),
              
              SizedBox(
                height: 15,
              ),
              TextButton(
                onPressed: () {
                  print("Log in tapped");
                  Get.to(()=> SignupPage1());
                }, 
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: const Color(0xFF0025A8), width: 0.3),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  minimumSize: Size(MediaQuery.of(context).size.width * 0.65, 55),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Sign in", style: TextStyle(fontFamily: 'Roboto',fontSize: 20, color: const Color(0xFF0025A8))
                  ),
                ),
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


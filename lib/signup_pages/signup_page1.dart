import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syoop/signup_pages/signup_page_entrepreneur.dart';
import 'package:syoop/signup_pages/signup_page_user.dart';
import 'package:syoop/widgets/blue_button.dart';
import 'package:syoop/widgets/terms_and_cond.dart';

class SignupPage1 extends StatelessWidget {
  const SignupPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
        foregroundColor: const Color(0xFF0025A8),
      ),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              Text(
                'Sign up',
                style: TextStyle(fontSize: 23, fontFamily: 'Roboto'),
              ),
              Text(
                'as',
                style: TextStyle(fontSize: 23, fontFamily: 'Roboto'),
              ),
            ],
          ),



          Column(
            
            children: [
              BlueButton(
                text: "Entrepreneur",
                horizontalPadding: MediaQuery.of(context).size.width * 0.45,
                onPressed: () {
                  print("Log in tapped");
                  Get.to(() => SignupPageEntrepreneur());
                },
              ),
              
              Text("Or", style: TextStyle(fontFamily: 'Roboto',fontSize: 19)),
              BlueButton(
                onPressed: (){
                  print("Log in tapped");
                  Get.to(() => SignupPageUser());
                },
                customColor: Colors.transparent,
                enableBorder: true,
                customText: Text("User", style: TextStyle(fontFamily: 'Roboto',fontSize: 20, color: const Color(0xFF0025A8), fontWeight: FontWeight.bold),),
                horizontalPadding: MediaQuery.of(context).size.width * 0.55,
              ),
              SizedBox(height: 7,),
              TermsAndCond(),
            ],
          ),
        ],
      ),)
      ,
    );
  }
}


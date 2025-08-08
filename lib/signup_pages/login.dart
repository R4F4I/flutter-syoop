import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syoop/signup_pages/introduction_pages/intro.dart';
// import 'package:get/get.dart';
import 'package:syoop/widgets/blue_button.dart';
import 'package:syoop/widgets/terms_and_cond.dart';



class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Center(child: Column(
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
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    
                  ],
                ),
              ),
              BlueButton(
                text: "Log In",
                horizontalPadding: MediaQuery.of(context).size.width * 0.27,
                verticalPadding: 10,
                onPressed: () {
                  print("Log in tapped");
                  Get.to(() => Intro());
                },
              ),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.verified_user, color: const Color(0xFF0025A8),size: 14,),
                  TermsAndCond(),
                ],
              ),
              ],
            ),
          ),
        ),
    );
  }
}


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
                minWidth: MediaQuery.of(context).size.width * 0.65,
                onPressed: () {
                  print("Log in tapped");
                  Get.to(() => SignupPageEntrepreneur());
                },
              ),
              /* TextButton(
                onPressed: () {
                  print("Log in tapped");
                  Get.to(() => SignupPageEntrepreneur());
                }, 
                style: TextButton.styleFrom(
                  surfaceTintColor: const Color.fromARGB(130, 208, 208, 208),
                  backgroundColor: const Color(0xFF0025A8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  minimumSize: Size(MediaQuery.of(context).size.width * 0.65, 55),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Entrepreneur", style: TextStyle(fontFamily: 'Roboto',fontSize: 20, color: Colors.white, )
                  ),
                )
              ), */
              
              Text("Or", style: TextStyle(fontFamily: 'Roboto',fontSize: 19)),
              TextButton(
                onPressed: () {
                  print("Log in tapped");
                  Get.to(() => SignupPageUser());
                  // Navigator.pushNamed(context, '/signup_page1');
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
                  child: Text("User", style: TextStyle(fontFamily: 'Roboto',fontSize: 20, color: const Color(0xFF0025A8), fontWeight: FontWeight.bold)
                  ),
                )
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


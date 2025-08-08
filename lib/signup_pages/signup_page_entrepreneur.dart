import 'package:flutter/material.dart';
import 'package:syoop/widgets/blue_button.dart';
import 'package:syoop/widgets/terms_and_cond.dart';

class SignupPageEntrepreneur extends StatelessWidget {
  const SignupPageEntrepreneur({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrepreneur'),
        foregroundColor: const Color(0xFF0025A8),
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                        labelText: 'First Name',
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Last Name',
                        border: UnderlineInputBorder(),
                      ),
                    ),
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
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Website[optional]',
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Company Email',
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Topic that interests you?',
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'User Name',
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'App Name',
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              BlueButton(onPressed: (){}, text: 'Submit',horizontalPadding: 200,),
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
      ),
    );
  }
}
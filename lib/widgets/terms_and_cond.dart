
import 'package:flutter/material.dart';

class TermsAndCond extends StatelessWidget {
  const TermsAndCond({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(text: TextSpan(
      text: "By signing up, you agree to our ",
      style: TextStyle(fontFamily: 'Roboto',fontSize: 10, ),
      children: <TextSpan>[
        TextSpan(text: 'Terms of Service', style: TextStyle(color: const Color(0xFF0025A8))),
        TextSpan(text: ' and ',),
        TextSpan(text: 'Privacy Policy', style: TextStyle(color: const Color(0xFF0025A8))),
      ],
    ));
  }
}
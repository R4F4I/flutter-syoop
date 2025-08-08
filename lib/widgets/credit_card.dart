import 'package:flutter/material.dart';
import 'package:syoop/widgets/symbols_logos.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Card(
        
        margin: EdgeInsets.all(10),
        color: Color(0xff0025A8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SimCard(),
                  ),
                  // Image.asset('assets/images/mastercard_logo.png', height: 30, width: 30, fit: BoxFit.cover),
                  masterCardLogo()
                ],
              ),
            ),
            Text('****  ****  **** 2546', style: TextStyle(fontFamily: 'Roboto', color: Colors.white, fontSize: 16),),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Peakydesigns', style: TextStyle(fontFamily: 'Roboto', color: Colors.white, fontSize: 13),),
                  Text('07/25', style: TextStyle(fontFamily: 'Roboto', color: Colors.white, fontSize: 13),),
                ],
              ),
            )
        ],)
      ),
    );
  }
}


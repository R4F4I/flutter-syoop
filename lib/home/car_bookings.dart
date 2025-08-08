import 'package:flutter/material.dart';
import 'package:syoop/widgets/blue_button.dart';
import 'package:syoop/widgets/credit_card.dart';

class   CarBookings extends StatelessWidget {
  const CarBookings ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 160,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return CreditCard();
                    },),
                ),
                SizedBox(height: 20),
                TextField(
                  cursorColor: Color(0xff0025A8),
                
                  decoration: InputDecoration(
                    // focusColor: Color(0xff0025A8),
                    hoverColor: Color(0xff0025A8),
                    labelText: 'Card Number',
                    border: OutlineInputBorder(
                      
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(color: Color(0xffcccccc), width: 0.5),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(width: 150,
                  child: TextField(
                    decoration: InputDecoration(
                      
                      hoverColor: Color(0xff0025A8),
                      labelText: 'Valid Code',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide(color: Color(0xffcccccc), width: 0.5),
                      ),
                    ),
                  ),
                ),
              ],

            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Audi R8 Coupe', style: TextStyle(fontFamily: 'Roboto', fontSize: 20,fontWeight: FontWeight.bold)),
                        Text('\$340/day * 3days', style: TextStyle(fontFamily: 'Roboto', fontSize: 15,color: Color.fromARGB(255, 130, 130, 130)),),
                      ],
                    ),
                    Text('\$1020', style: TextStyle(fontFamily: 'Roboto', fontSize: 20,fontWeight: FontWeight.bold)),

                  ],
                ),
                Divider(
                  color: Color(0xff0252A8),
                ),
                BlueButton(
                  onPressed: (){},
                  text: 'Pay Now',
                  radius: 8,
                  verticalPadding: 15,
                  horizontalPadding: 35,

                ),
                
              ]
          ),
      ])),
    );
  }


}


import 'package:flutter/material.dart';

class   FoodOrders  extends StatelessWidget {
  const FoodOrders ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:Text('Orders'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.builder(itemBuilder: (context,index) {
         return Padding(
           padding: const EdgeInsets.all(15.0),
           child: Column(children: [
            Card(
              margin: EdgeInsets.all(0),
              elevation: 4,
              color: Color(0xff0025A8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Row(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          "images/tarcos.jpg",
                          fit: BoxFit.cover, // Fills both axes, crops if needed
                          height: 80,
                          width: 80,
                        )
                      ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Lorem', style: TextStyle(fontFamily: 'Roboto', fontSize: 16, color: Colors.white,),),
                          Text('Lorem ipsum', style: TextStyle(fontFamily: 'Roboto', fontSize: 13, color: Color(0xffcccccc),fontWeight: FontWeight.w100),),
                        ],
                      ),
                    ],
                  ),
                  Text('\$2$index', style: TextStyle(fontFamily: 'Roboto', fontSize: 16, color: Colors.white,),),
            
              ],),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Cancel Order', style: TextStyle(fontFamily: 'Roboto', fontSize: 12, color: Color(0xff0025A8), decoration: TextDecoration.underline, decorationColor: Color(0xff0025A8)))
            ],)
           ],),
         );
        } ),
      )
    );
  }
}
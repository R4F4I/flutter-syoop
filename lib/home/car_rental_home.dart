import 'package:flutter/material.dart';
import 'package:syoop/widgets/syoop_search_bar.dart';

class CarRentalHome extends StatelessWidget {
  const CarRentalHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text('Car Rental')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Syoop',
                style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              SyoopSearchBar(),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Hot',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF0025A8)),
                        ),
                        TextSpan(
                          text: ' Deals',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          
                        ),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'View All',
                      style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Color(0xFF0025A8)),
                    ),
                  ),
            
                ],
              ),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SizedBox(
                        width: 210,
                        child: Card(
                          elevation: 8,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                            side: BorderSide(color: Color(0xffcccccc), width: 1),
                          ),
                              
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(18),
                                  topLeft: Radius.circular(18),
                                  topRight: Radius.circular(18),
                                ),
                                child: Image.asset(
                                  "images/car.jpg",
                                  fit: BoxFit.cover, // Fills both axes, crops if needed
                                  width: 200,
                                  height: 150,
                                ),
                              ),
                              SizedBox(height: 10),
            
                              Column(
                                children: [
            
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        carNameText(index), 
                                        priceText(index),
                                    ],),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      detailsButton(), 
                                      rentNowButton(),
                                  ],),
                                ],
                              )
                            ],
                          )
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 20,
                child: RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Top',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF0025A8)),
                      ),
                      TextSpan(
                        text: ' Dealers',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 180,
                child: ListView.builder(
                  // padding: EdgeInsets.symmetric(horizontal: 20),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 145,
                        child: Card(
                          elevation: 4,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                            side: BorderSide(color: Color(0xffcccccc), width: 1),
                          ),
                          
                          child: Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(18),
                                  child: Image.asset(
                                    "images/redcar.jpg",
                                    fit: BoxFit.cover, // Fills both axes, crops if needed
                                    width: 80,
                                    height: 80,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Hertz $index",
                                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                                // SizedBox(height: ),
                                Text(
                                  "Location $index",
                                  style: TextStyle(fontSize: 10, color: Colors.grey),
                                ),
                              ],
                            ),
                        ),
                      )),
                    );
                  }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Text carNameText(int index) {
    return Text(
      "Audi R$index \nCoupe",
      style: TextStyle(fontFamily: 'Roboto', fontSize: 16 ),
    );
  }

  Text priceText(int index) {
    return Text(
      "\$${(index + 1) * 20}/day",
      style: TextStyle(fontFamily: 'Roboto', fontSize: 16 , color: Color(0xFF0025A8)),
    );
}

  TextButton rentNowButton() {
    return TextButton(
      style: TextButton.styleFrom(
        
        backgroundColor: Color(0xFF0025A8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft:Radius.circular(18),
            bottomRight:Radius.circular(18),
          ),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      ),
      onPressed: (){}, 
      child: Text(
          "Rent Now",
          style: TextStyle(fontFamily: 'Roboto', fontSize: 14, color: Colors.white),
        ),
      );
  }

  TextButton detailsButton() {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight:Radius.circular(18),
            bottomLeft:Radius.circular(18),
          ),
        ),
      ),
      child: Text(
        "Details",
        style: TextStyle(fontFamily: 'Roboto', fontSize: 14 , color: Color(0xFF0025A8)),
      ),
    );
}
}

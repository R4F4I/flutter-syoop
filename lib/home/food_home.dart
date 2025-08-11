import 'package:flutter/material.dart';

class FoodHome extends StatelessWidget {
  const FoodHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width*0.82,
                    child: SearchBar(
                      hintText: 'Search for your taste',
                      hintStyle: WidgetStatePropertyAll(TextStyle(fontFamily: 'Roboto', color: Color(0xffcccccc))),
                      backgroundColor: WidgetStatePropertyAll(Color(0xff0025A8)),
                      side: WidgetStateProperty.all(BorderSide(color: Color(0xffcccccc), width: 1)),
                      shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(22))),
                    ),
                  ),
                  Icon(Icons.settings, color: Color(0xff0025A8), size: 40,),
                ],
              ),
              SizedBox(height: 20),
              Text('Syoopfoods',style: TextStyle(fontFamily: 'Quando', fontSize: 30),),
              SizedBox(height: 20),
          
              ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.asset('images/foodLarge.jpg',height: 250, width: double.infinity, fit: BoxFit.cover,), 
                ),
              SizedBox(height: 20),
              Text('Categories', style: TextStyle(fontFamily: 'Roboto')),
              SizedBox(height: 20),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  itemCount: 12,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    return Transform.translate(
                      offset: Offset(index==0? 0:  -(34 * index.toDouble()),0), // the offset technically offsets all the items to the left but they all dont overlap because they all move equally to the left, in order to make them all overlap, every other item must offset more than the prev
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Color(0xffcccccc), width: 2),
                            image: DecorationImage(image: AssetImage('images/food1.jpg') ) 
                            ),
                        ),
                      ),
                    );
                }),
              ),
              SizedBox(height: 20),
              /* SizedBox(
                height: 20,

                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context,index){
                    return Card();
                } ),

              ), */
              SizedBox(
                  height: 190,
                  child: ListView.builder(
                    // padding: EdgeInsets.symmetric(horizontal: 20),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 120,
                          child: Card(
                            elevation: 4,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                              side: BorderSide(color: Color(0xffcccccc), width: 1),
                            ),
                            
                            child: Column(
                              
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(18),
                                      topRight: Radius.circular(18),
                                    ),
                                  child: Image.asset(
                                    "images/tarcos.jpg",
                                    fit: BoxFit.cover, // Fills both axes, crops if needed
                                    width: 120,
                                    height: 80,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 1),
                                      Text(
                                        "Tarcos $index",
                                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                      ),
                                      
                                      Row(
                                        children: [
                                          Icon(Icons.pedal_bike_sharp),
                                          Text(
                                            "[$index]",
                                            style: TextStyle(fontSize: 12, color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                      stars_5(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                        )),
                      );
                    }),
                ),


          ],),
        ),
      )
    );
  }

  Row stars_5() {
    return Row(children: [
                                Icon(Icons.star, color: const Color.fromARGB(255, 255, 213, 59), size: 16),
                                Icon(Icons.star, color: const Color.fromARGB(255, 255, 213, 59), size: 16),
                                Icon(Icons.star, color: const Color.fromARGB(255, 255, 213, 59), size: 16),
                                Icon(Icons.star, color: const Color.fromARGB(255, 255, 213, 59), size: 16),
                                Icon(Icons.star, color: const Color.fromARGB(255, 255, 213, 59), size: 16),
                              ],);
  }
}
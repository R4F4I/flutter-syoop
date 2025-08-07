import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/syoop_search_bar.dart';
import 'car_rental_home.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.fixed,
        // unselectedFontSize: 0,
        iconSize: 24,
        currentIndex: 0,
        // fixedColor: Colors.blue, 
        backgroundColor: Color(0xff0025A8),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.car_rental, color: const Color.fromARGB(119, 255, 255, 255),), 
            activeIcon: Icon(Icons.car_rental, color: Colors.white,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: const Color.fromARGB(119, 255, 255, 255),), 
            activeIcon: Icon(Icons.home, color: Colors.white,),
            label: '',
          ),
        ]),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Syoop',
                style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20,),
              SyoopSearchBar(),
              SizedBox(height: 20,),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context,index){
                    return SizedBox(
                      width: 180,
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                          side: BorderSide(color: Color(0xffcccccc), width: 1),
                        ),
                        
                        child: Text(
                          "Card $index",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    );
                  }),
              ),
              SizedBox(height: 20,),
              Text(
                'What would you like to do today?',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              GridView.builder(
                shrinkWrap: true,
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 180, ), 
                itemBuilder: (context, index){
                  return Column(
                    children: [
                      SizedBox(
                        width: 120,
                        height: 80,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                              side: BorderSide(color: Color.fromARGB(255, 146, 145, 145), width: 1.4),
                            ),
                          ),
                          onPressed: () {
                            Get.to(() => CarRentalHome());
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(18), // Match the Card's borderRadius
                            child: Image.asset("images/taxi.jpg",fit: BoxFit.cover, height: 100,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "rent a car",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),  
    );
  }
}


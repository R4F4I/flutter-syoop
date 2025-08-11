import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:syoop/controllers/home_controller.dart';
import 'package:syoop/controllers/is_loading_controller.dart';

class FoodHome extends StatelessWidget {
  
  const FoodHome({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
         RefreshIndicator(
          onRefresh: () async {
            
          },
          
          child: (true == true)
          ? SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          LoadingBox(height: 45,width: MediaQuery.of(context).size.width*0.75,),
                          LoadingBox(height: 45,width: 45),
                        ],
                      ),
                      SizedBox(height: 20),
                      LoadingBox(height: 45,width: 250),
                      SizedBox(height: 20),
                      LoadingBox(height: 250,width: 829),
                      SizedBox(height: 20),
                      LoadingBox(width: 150 ,),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 12,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: LoadingBox(height: 100, width: 100, radius: 50,),
                        ),
                      );
                  }),
                ),
                SizedBox(height: 20),
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
                          child:LoadingBox(width: 120, height: 250,) ,
                        );
                      }),
                  ),
            ],),
          )

          : SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            isLoadedSearchBar(context),
                            Icon(Icons.settings, color: Color(0xff0025A8), size: 40,),
                          ],
                        ),
                        SizedBox(height: 20),
                        isLoadedLogoQuando(),
                        SizedBox(height: 20),
                        isLoadedLargeDisplayImage(context),
                        SizedBox(height: 20),
                        Text('Categories', style: TextStyle(fontFamily: 'Roboto', fontSize: 20, fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 12,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index){
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
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
                            child: isLoadedBottomCard(index),
                          );
                        }),
                    ),
              
              
              ],),
            )
        ),
    
    );
  }

  SizedBox isLoadedSearchBar(BuildContext context) {
    return SizedBox(
                      height: 45,
                      width: MediaQuery.of(context).size.width*0.7,
                      child: SearchBar(
                        hintText: 'Search for your taste',
                        hintStyle: WidgetStatePropertyAll(TextStyle(fontFamily: 'Roboto', color: Color(0xffcccccc))),
                        backgroundColor: WidgetStatePropertyAll(Color(0xff0025A8)),
                        side: WidgetStateProperty.all(BorderSide(color: Color(0xffcccccc), width: 1)),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18))),
                      )
                    );
  }

  SizedBox isLoadedBottomCard(int index) {
    return SizedBox(
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
                    ));
  }

  Card isLoadedLargeDisplayImage(BuildContext context) {
    return Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                      ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(18),
                      child: Image.asset('images/foodLarge.jpg',height: 250, width: 829, fit: BoxFit.cover,), 
                      ),
                );
  }

  
  Text isLoadedLogoQuando() => Text('Syoopfoods',style: TextStyle(fontFamily: 'Quando', fontSize: 30),);

  ///////////////////////////////////////////////////
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

class LoadingBox extends StatelessWidget {
  final double? height;
  final double? width;
  final double? radius;

  const LoadingBox({
    super.key,
    this.height = 30,
    this.width = 30,
    this.radius,
  });


  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Color.fromARGB(255, 213, 213, 213),
      highlightColor: Colors.white,
      child: SizedBox(
                    height: height ,
                    width: width ,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 213, 213, 213),
                          borderRadius: BorderRadius.circular(radius??18),
                        )
                      ),
                  ),
    );
  }
}


import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // bottomNavigationBar: ,
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
              SearchBar(
                backgroundColor:WidgetStateProperty.all(Colors.white),
                leading: Icon(Icons.search), 
                elevation: WidgetStateProperty.all(0),
                side: WidgetStateProperty.all(BorderSide(color: Color(0xffcccccc), width: 1)),
                shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(22))),
              ),
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
                        width: 150,
                        height: 100,
                        child: Card(
                          elevation: 0,
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                            side: BorderSide(color: Color.fromARGB(255, 146, 145, 145), width: 1.4),
                          ),
                          
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(18), // Match the Card's borderRadius
                            child: Image.asset("images/taxi.jpg",fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Card $index",
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
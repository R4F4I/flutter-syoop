import 'package:flutter/material.dart';
import 'package:syoop/widgets/blue_button.dart';
import 'package:syoop/widgets/bottom_nav_bar.dart';

class CarDetailView extends StatelessWidget {
  const CarDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar:BottomNavBar(
        icon0: Icons.home_outlined,
        icon1: Icons.calendar_month_outlined,
        icon2: Icons.notifications_outlined,
        icon3: Icons.person_outline,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0,left: 16.0,right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Audi R8 Coupe',
                      style: TextStyle(fontFamily: 'Roboto', fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.asset('assets/images/r8car.jpg', height: 200, width: double.infinity, fit: BoxFit.cover)
              ),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Car Details', style: TextStyle(fontFamily: 'Roboto', fontSize: 25, decoration: TextDecoration.underline, decorationColor: Color(0xff0025A8), decorationThickness: 1.5)),
                ],
              ),
              Text(
                'Terasper vik. Dick vagt. Döda vinkeln-varnare. Doviskade. Kurade jedon kans. Muvis stadsutglesning, påktig. Speröre teska, dokung. Degisk mis. Pagurtad analyd. Gånat eurov semigen. Infraledes prement datalektiker. Oliga yvis. Våsk stalker nynade. Trende bessa innan dojer. Näthat hämndporr, soktigt. Metrobel tempotris. Exobel niskap. Sak plar. Preplarade hemisassade. Tetrasade decin tengar. ', 
                style: TextStyle(fontFamily: 'Roboto', fontSize: 14,)
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Read more',style: TextStyle(fontFamily: 'Roboto', color: Color(0xff0025A8), decoration: TextDecoration.underline, decorationColor: Color(0xff0025A8), decorationThickness: 1.5),)
                ],
              ),
              Card(
                elevation: 4,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                  side: BorderSide(color: Color(0xffcccccc), width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Call Manager', style: TextStyle(fontFamily: 'Roboto', fontSize: 18,)),
                          Text('Tap to call for more details', style: TextStyle(fontFamily: 'Roboto', fontSize: 10,)),
                        ],
                      ),
                      Card(
                        elevation: 4,
                        color: Color(0xff0025A8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                          side: BorderSide(color: Color(0xffcccccc), width: 1),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.call_outlined, color: Colors.white, size: 30,),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              /* TextButton(
                onPressed: (){}, 
                style: TextButton.styleFrom(
                  elevation: 4,
                  backgroundColor: Color(0xff0025A8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(vertical:  11.0, horizontal: 60),
                ),
                child: Text('Pick a date', style: TextStyle(fontFamily: 'Roboto', fontSize: 16, color: Colors.white))
              ), */
              BlueButton(
                onPressed: (){},
                radius: 12,
                verticalPadding: 11,
                horizontalPadding: 60,
                text: 'Pick a date',

              )
            ],
          ),
        ),
      )
    );
  }
}
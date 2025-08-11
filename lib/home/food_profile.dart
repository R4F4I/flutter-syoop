import 'package:flutter/material.dart';

class   FoodProfile extends StatelessWidget {
  const FoodProfile ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: 20,),
            Text('Profile', style: TextStyle(fontFamily: 'Roboto', fontSize: 30),),
            Icon(Icons.person, color: Color(0xff0025A8),)
          ],
        ),
        backgroundColor: Colors.transparent,
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            ClipOval(
              child: Image.asset(
                "images/pfp.jpg",
                fit: BoxFit.cover, // Fills both axes, crops if needed
                height: 130,
                width: 130,
              )
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  SyoopTextField(labelText: 'Peakydesigns'),
                  SizedBox(height: 20,),
                  SyoopTextField(labelText: 'Address'),
                  SizedBox(height: 20,),
                  SyoopTextField(labelText: 'Email'),
                  SizedBox(height: 20,),
                  SyoopTextField(labelText: 'Number'),
                  SizedBox(height: 20,),
                  SyoopTextField(labelText: 'Date of birth'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SyoopTextField extends StatelessWidget {
  final String? labelText;
  const SyoopTextField({
    super.key,
    this.labelText='label text'
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: Color(0xff0025A8)),
        enabledBorder:  OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff0025A8),
          ),
          borderRadius: BorderRadius.circular(18),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xff0025A8),
          ),
          borderRadius: BorderRadius.circular(18),
        ),
      ),
    );
  }
}
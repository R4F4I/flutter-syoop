import 'package:flutter/material.dart';

class SimCard extends StatelessWidget {
  const SimCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                height: 25,
                                width: 37.5,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color(0xffFF9800),
                                )),
                              ),
                              Icon(Icons.deblur, color: Color(0xffFFD54F), size: 20,),
                            ],
                          );
  }
}

class masterCardLogo extends StatelessWidget {
  const masterCardLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                              width: 50,
                              height: 35,
                              child: Stack(
                                children: [
                                  Positioned(
                                    right: 0,
                                    child: Icon(Icons.circle, color: Colors.yellow, size: 30,)
                                  ),
                                  Positioned(
                                    right: 13,
                                    child: Icon(Icons.circle, color: Colors.red, size: 30,)
                                  ),
                                ]
                              ),
                            );
  }
}
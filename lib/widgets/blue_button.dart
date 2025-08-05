import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  final double? radius;
  final double? minHeight;
  final double? minWidth;
  final String? text;
  final VoidCallback? onPressed;
  const BlueButton({
    super.key,
    this.radius=18.0,
    this.minHeight= 55,
    this.minWidth= 55,
    this.text= "button",
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed, 
      style: TextButton.styleFrom(
        surfaceTintColor: const Color.fromARGB(130, 208, 208, 208),
        backgroundColor: const Color(0xFF0025A8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius!),
        ),
        minimumSize: Size(minWidth!, minHeight!),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(text!, style: TextStyle(fontFamily: 'Roboto',fontSize: 20, color: Colors.white,)
        ),
      )
    );
  }
}
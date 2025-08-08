import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  final double? radius;
  final double? verticalPadding;
  final double? horizontalPadding;
  final Text? customText;
  final String? text;
  final double? fontSize;
  final VoidCallback? onPressed;
  final Color? customColor;
  final bool? enableBorder;

  const BlueButton({
    super.key,

    this.fontSize=16,
    this.radius=18.0,
    this.verticalPadding= 20,
    this.horizontalPadding= 10,
    this.text = 'button',
    this.customText,
    this.customColor = const Color(0xFF0025A8),
    required this.onPressed,
    this.enableBorder = true,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed, 
      style: TextButton.styleFrom(
        backgroundColor: customColor!,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius!),
          side: enableBorder! 
            ?  BorderSide(color: const Color(0xFFcccccc), width: 0.8)
            :  BorderSide(color: const Color(0xFFcccccc), width: 0)
        ),
        padding: EdgeInsets.symmetric(vertical:  verticalPadding!, horizontal: horizontalPadding!/2),

      ),
      // if only string and font are provided then apply them in the default, if you want to override the entire text style and such use the text?
      child: customText?? Text(text!, style: TextStyle(fontFamily: 'Roboto',fontSize: fontSize!, color: Colors.white,)),
      );
  }
}
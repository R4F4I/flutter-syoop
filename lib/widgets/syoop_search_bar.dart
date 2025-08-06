import 'package:flutter/material.dart';

class SyoopSearchBar extends StatelessWidget {
  const SyoopSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      backgroundColor:WidgetStateProperty.all(Colors.white),
      leading: Icon(Icons.search), 
      elevation: WidgetStateProperty.all(0),
      side: WidgetStateProperty.all(BorderSide(color: Color(0xffcccccc), width: 1)),
      shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(22))),
    );
  }
}
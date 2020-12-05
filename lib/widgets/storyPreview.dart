import 'package:flutter/material.dart';

Widget story(Color color, String imageUrl){
  return Padding(
    padding: const EdgeInsets.only(left:5),
    child: Container(
      height: 90,
      width: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: color, width:2),
        image: DecorationImage(image: AssetImage(imageUrl),fit: BoxFit.fill)
      ),
    ),
  );
}

// square box widget which can be used rest of Ui

Widget square(String imageUrl){
  return Padding(
    padding: const EdgeInsets.only(left:5),
    child: Container(
      height: 90,
      width: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(image: AssetImage(imageUrl),fit: BoxFit.fill)
      ),
    ),
  );
}
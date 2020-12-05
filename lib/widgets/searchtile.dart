import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget searchTile(String imgUrl, String name){
  return Padding(
    padding: const EdgeInsets.only(bottom:5),
    child: ListTile(
      leading: Container(
        width: 100,
        height: 150,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          image: AssetImage(imgUrl),
          fit: BoxFit.fill,
              )
          ),
      ),
      tileColor: Colors.grey[900],
      title: Text(name,style: TextStyle(color: Colors.white,fontSize: 13),),
      trailing: Icon(Icons.play_arrow_rounded,color: Colors.grey[300],size: 35,),
    ),
  );

}
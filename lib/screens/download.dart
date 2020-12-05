import 'package:flutter/material.dart';



class download extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.grey[900],
              borderRadius: BorderRadius.circular(100),
            ),
            child: Icon(Icons.download_sharp,size: 90,color: Colors.black,),
          ),
          SizedBox(height:20),
          Center(child: Text("Movies and Tv show that you \n\t\t\t\t\t\t\tdownload appear here.",
          style: TextStyle(color: Colors.grey[300],fontSize: 20,fontWeight: FontWeight.w300))),
          SizedBox(height:90),
          Container(
            height: 30,
            width: 230,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5)
            ),
            child: Center(child: Text("Find Something to Download",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 16),)),
          )
        ],
      ),
    );
  }
}
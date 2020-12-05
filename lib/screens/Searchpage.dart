import 'package:app/widgets/searchtile.dart';
import 'package:flutter/material.dart';


class search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top:50),
            child: Container(
              width: double.infinity,
              height: 50,
              color: Colors.grey[900],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.search,color: Colors.grey[300]),
                  Text("Search for a show, movie, genre..",style: TextStyle(color: Colors.grey[300],fontSize: 18,fontWeight: FontWeight.w400),),
                  Icon(Icons.mic,color: Colors.grey[300]),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              width: double.infinity,
              height: 623,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Container(
                    width: double.infinity,
                    height: 565,
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [

                        Padding(
                    padding: const EdgeInsets.only(top: 0,left: 10,bottom: 10),
                    child: Text("Top Searches",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  ),

                        searchTile('images/pic1.jpg', "The fighting movie"),
                        searchTile('images/pic2.jpg', "The fighting movie"),
                        searchTile('images/pic11.jpg', "The fighting movie"),
                        searchTile('images/pic12.jpg', "The fighting movie"),
                        searchTile('images/pic15.jpg', "The fighting movie"),
                        searchTile('images/pic1.jpg', "The fighting movie"),
                        searchTile('images/pic13.jpg', "The fighting movie"),
                        searchTile('images/pic1.jpg', "The fighting movie"),
                        searchTile('images/pic15.jpg', "The fighting movie"),
                        searchTile('images/pic20.jpg', "The fighting movie"),
                        searchTile('images/pic24.jpg', "The fighting movie"),
                        searchTile('images/pic25.jpg', "The fighting movie"),
                        searchTile('images/pic28.jpg', "The fighting movie"),
                        searchTile('images/pic30.jpg', "The fighting movie"),
                        searchTile('images/pic31.jpg', "The fighting movie"),
                        searchTile('images/pic41.jpg', "The fighting movie"),
                        searchTile('images/pic6.jpg', "The fighting movie"),
                        searchTile('images/pic7.jpg', "The fighting movie"),
                        searchTile('images/pic1.jpg', "The fighting movie"),
                        searchTile('images/post.jpg', "The fighting movie"),
                        searchTile('images/poster.jpg', "The fighting movie"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      );

  }
}
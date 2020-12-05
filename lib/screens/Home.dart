import 'package:app/widgets/storyPreview.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    title: 'Netflix',
    theme: ThemeData(
      primaryColor: Colors.black,
    ),
    home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 600,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('images/post.jpg'),fit: BoxFit.fill)
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    width: double.infinity,
                    height: 90,
                    color: Colors.black.withOpacity(0.1),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 35.0,right: 20.0),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image(
                          image: AssetImage('images/logo.png'),width: 50,height: 50,
                        ),
                        Text("TVShows",style: TextStyle(fontSize: 20,color: Colors.white,decoration:TextDecoration.none,letterSpacing: 1)),
                        SizedBox(width:5),
                        Text("Movies",style: TextStyle(fontSize: 20,color: Colors.white,decoration:TextDecoration.none,letterSpacing: 0)),
                        SizedBox(width:5),
                        Text("MyList",style: TextStyle(fontSize: 20,color: Colors.white,decoration:TextDecoration.none,letterSpacing: 1)),
                        SizedBox(width:5),     
                      ],),
                    ),
                  )
                  ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: 420,
                    height: 90,
                    color: Colors.black.withOpacity(0.1),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Emotional • Action Thriller • Cops • Romantic",style: TextStyle(fontSize: 12,color: Colors.white,decoration:TextDecoration.none,letterSpacing: 1,fontWeight: FontWeight.bold))
                            ],
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(icon: Icon(Icons.add,color: Colors.white,size: 35,), onPressed: (){}),
                                Text("My List",style: TextStyle(fontSize: 10,color: Colors.white,decoration:TextDecoration.none,letterSpacing: 1,fontWeight: FontWeight.bold))
                              ],
                              ),  // child 1
                              Container(
                                width: 80,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.play_arrow),
                                    Text("Play",style: TextStyle(fontSize: 15,color: Colors.black,decoration:TextDecoration.none,letterSpacing: 1,fontWeight: FontWeight.w900))
                                  ],
                                ),
                              ), // child 2
                              Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(icon: Icon(Icons.info_outline_rounded,color: Colors.white,size: 35,), onPressed: (){}),
                                Text("Info",style: TextStyle(fontSize: 10,color: Colors.white,decoration:TextDecoration.none,letterSpacing: 1,fontWeight: FontWeight.bold))
                              ],
                              ), // child 3
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left:10.0),
            child: Container(
              width: double.infinity,
              height: 128,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Previews",style: TextStyle(decoration: TextDecoration.none,fontSize: 20,color: Colors.white)),
                  SizedBox(height: 15,),

                  Container(
                    width: double.infinity,
                    height: 90,
                    color: Colors.black,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                      story(Colors.blue.withOpacity(0.6), 'images/pic1.jpg'),
                      story(Colors.green.withOpacity(0.6), 'images/pic2.jpg'),
                      story(Colors.red.withOpacity(0.6), 'images/pic3.jpg'),
                      story(Colors.yellow.withOpacity(0.6), 'images/pic4.jpg'),
                      story(Colors.blue.withOpacity(0.6), 'images/pic5.jpg'),
                      story(Colors.green.withOpacity(0.6), 'images/pic6.jpg'),
                      story(Colors.red.withOpacity(0.6), 'images/pic7.jpg'),
                      story(Colors.yellow.withOpacity(0.6), 'images/pic8.jpg'),
                      story(Colors.green.withOpacity(0.6), 'images/pic9.jpg'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left:10.0),
            child: Container(
              width: double.infinity,
              height: 200,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("TV Shows",style: TextStyle(decoration: TextDecoration.none,fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white)),
                  SizedBox(height: 10,),
                  Container(
                    width: double.infinity,
                    height: 140,
                    color: Colors.black,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                      square('images/main.jpg'),
                      square('images/mainposter.jpg'),
                      square('images/pic5.jpg'),
                      square('images/poster.jpg'),
                      square('images/pic8.jpg'),
                      square('images/pic6.jpg'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left:10.0),
            child: Container(
              width: double.infinity,
              height: 200,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Trending Now",style: TextStyle(decoration: TextDecoration.none,fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white)),
                  SizedBox(height: 10,),
                  Container(
                    width: double.infinity,
                    height: 140,
                    color: Colors.black,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                      square('images/pic10.jpg'),
                      square('images/pic11.jpg'),
                      square('images/pic12.jpg'),
                      square('images/pic13.jpg'),
                      square('images/pic14.jpg'),
                      square('images/pic15.jpg'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left:10.0),
            child: Container(
              width: double.infinity,
              height: 200,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Blockbuster Movies",style: TextStyle(decoration: TextDecoration.none,fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white)),
                  SizedBox(height: 10,),
                  Container(
                    width: double.infinity,
                    height: 140,
                    color: Colors.black,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                      square('images/pic16.jpg'),
                      square('images/pic18.jpg'),
                      square('images/pic19.jpg'),
                      square('images/pic20.jpg'),
                      square('images/pic28.jpg'),
                      square('images/pic25.jpg'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left:10.0),
            child: Container(
              width: double.infinity,
              height: 200,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Action & Adventure",style: TextStyle(decoration: TextDecoration.none,fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white)),
                  SizedBox(height: 10,),
                  Container(
                    width: double.infinity,
                    height: 140,
                    color: Colors.black,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                      square('images/pic31.jpg'),
                      square('images/pic32.jpg'),
                      square('images/pic35.jpg'),
                      square('images/pic30.jpg'),
                      square('images/pic41.jpg'),
                      square('images/30.jpg'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left:10.0),
            child: Container(
              width: double.infinity,
              height: 200,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Netflix Originals",style: TextStyle(decoration: TextDecoration.none,fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white)),
                  SizedBox(height: 10,),
                  Container(
                    width: double.infinity,
                    height: 140,
                    color: Colors.black,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                      square('images/pic36.png'),
                      square('images/pic37.jpg'),
                      square('images/pic38.jpg'),
                      square('images/pic39.jpg'),
                      square('images/29.jpg'),
                      square('images/pic6.jpg'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left:10.0),
            child: Container(
              width: double.infinity,
              height: 200,
              color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Crime TV Shows",style: TextStyle(decoration: TextDecoration.none,fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white)),
                  SizedBox(height: 10,),
                  Container(
                    width: double.infinity,
                    height: 140,
                    color: Colors.black,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                      square('images/main.jpg'),
                      square('images/mainposter.jpg'),
                      square('images/pic5.jpg'),
                      square('images/poster.jpg'),
                      square('images/pic8.jpg'),
                      square('images/pic6.jpg'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


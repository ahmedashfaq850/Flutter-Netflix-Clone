import 'package:flutter/material.dart';
import 'package:app/screens/mainscreen.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Netflix',
    theme: ThemeData(
      primaryColor: Colors.black,
      brightness: Brightness.dark
    ),
    home: SplashScreen(),
  ));
}


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    var d = Duration(seconds:5);
    Future.delayed(d,(){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
        return mainScreen();
      }), (route) => false);
    });
    super.initState();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            height: 1000,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/splashscreen.png',),
                fit: BoxFit.fill
              )
            ),
          ),
        ),
      ),
    );
  }
}

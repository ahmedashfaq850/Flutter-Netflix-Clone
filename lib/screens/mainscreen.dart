import 'package:app/screens/Home.dart';
import 'package:app/screens/Searchpage.dart';
import 'package:app/screens/download.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class mainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    title: 'Netflix',
    theme: ThemeData(
      primaryColor: Colors.black,
    ),
    home: NetflixTabbar(),
    );
  }
}

class NetflixTabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Theme(
        data: ThemeData(
          //brightness: Brightness.dark,
        ),
        child: Scaffold(
          backgroundColor: Colors.black,
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home),text: "Home",),
              Tab(icon: Icon(Icons.search),text: "Search",),
              
              Tab(icon: Icon(Icons.file_download),text: "Download",),
              Tab(icon: Icon(Icons.list),text: "More",),
            ],
            unselectedLabelColor: Color(0xff999999),
            labelColor: Colors.white,
            indicatorColor: Colors.transparent,
          ),
          body: TabBarView(
            children: [
              Home(),
              search(),
              download(),
              Center(child: Text("page4"),),
            ],
          ),
        ),
      ),
    );
  }
}
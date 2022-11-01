import 'package:flutter/material.dart';
import 'package:project1/page/first_page.dart';
import 'package:project1/page/second_page.dart';
import 'package:project1/page/third_page.dart';


void main() => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AppBarExample(),
    );
  }
}

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 3,
    child: Scaffold(
      backgroundColor: const Color(0x86C2DCCC),
      appBar: AppBar(
        backgroundColor: Color(0xCC86C2DC),
        title: Text('Welcome to Chicago', style: TextStyle(
            color: Colors.white,
            fontSize: 36
        ),) ,

        centerTitle: true,
        toolbarHeight: 150,
        //get rounded edges for appbar
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
            top: Radius.circular(30),
          ),
        ),
        //add background image for flexible space
        flexibleSpace: Container(
          margin: EdgeInsets.all(30),
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/chicago1.png'),
                fit: BoxFit.fill,
                ),
              ),
            ),
        // Add 3 tabs for tabBar
        bottom: TabBar(
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.explore),

            ),
            Tab(
              icon: Icon(Icons.local_activity),
            ),
            Tab(
              icon: Icon(Icons.sports_baseball),
            ),
          ],
         ),
      ),
        body:  TabBarView(
        children: <Widget>[
          FirstPage(),
          SecondPage(),
          ThirdPage(),

        ],

      ),
      ),

    );
  }
}

import 'dart:js_util';

import 'package:flutter/material.dart';

// First page need to show 3 options for Neighborhoods: Lincoln Park, Logan Square, Navy Pier
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        backgroundColor: Color(0xFFC6D7B8),
        appBar: AppBar(title: Text('Neighborhoods',style: TextStyle(color: Colors.white, fontSize:22),)),
        body: BodyWidget(),
      ),
    );
  }
}


String lincoln = 'assets/lincoln-park.jpg';
String navy = 'assets/navy_pier.jpg';
String wicker ='assets/wicker_park.jpg';
var name='Test';

class BodyWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(60),
      children: <Widget>[
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: 4),

          horizontalTitleGap: 16.0,
          leading: CircleAvatar(
            backgroundImage: NetworkImage(lincoln),
          ),
          title: Text('Lincoln Park',style:TextStyle(color:Colors.black87, fontSize: 20)),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LincolnPark(),
              ),
            );
          },
        ),
        Divider(height:70.0),

        ListTile(

          visualDensity: VisualDensity(horizontal: 0, vertical: 4),
          horizontalTitleGap: 16.0,
          leading: CircleAvatar(
            backgroundImage: NetworkImage(wicker),
          ),
          title: Text('Wicker Park', style:TextStyle(color:Colors.black87, fontSize: 20)),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WickerPark(),
              ),
            );
          },
        ),
        Divider(height:70.0),
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: 4),
          horizontalTitleGap: 16.0,
          leading: CircleAvatar(
            backgroundImage: NetworkImage(navy),
          ),
          title: Text('Navy Pier',style:TextStyle(color:Colors.black87, fontSize: 20)),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NavyPier(),
              ),
            );
          },
        ),
        Divider(height:70.0),
      ],
    );
  }
}

class LincolnPark  extends StatelessWidget {
  const LincolnPark({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lincoln Park',style:TextStyle(color:Colors.white, fontSize: 20)),
      ),

      body: Center(
          child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(lincoln),
                    fit: BoxFit.fill
                ),
              ),

            ),
            Text('Lincoln Park', style:TextStyle(color:Colors.black, fontSize: 24)),
            Text("\nLincoln Park is a designated community area on the North Side of Chicago, Illinois. Lying to the west of Lincoln Park, Chicago's largest park, it is one of the most affluent neighborhoods in Chicago.\n\nLincoln Park, Chicago, Illinois - 60614", style:TextStyle(color:Colors.black87, fontSize: 15)),
          ])),
    );
  }
}
class WickerPark  extends StatelessWidget {
  const WickerPark({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wicker Park',style:TextStyle(color:Colors.white, fontSize: 20)),
      ),

      body: Center(
          child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(wicker),
                    fit: BoxFit.fill
                ),
              ),

            ),
            Text('Wicker Park', style:TextStyle(color:Colors.black, fontSize: 24)),
            Text("\nHip Wicker Park has been a residential enclave since Chicago was incorporated as a city in 1837. North Milwaukee Avenue is known for its bustling nightlife, dining and entertainment venues, with Double Door, Subterranean and Davenport’s setting the bar for the city's trendy music clubs. North Damen Avenue draws hip crowds with its quirky shops, minimalist cafes, specialty grocery stores and cool fashion boutiques. \n\nWicker Park, Chicago, Illinois - 60622", style:TextStyle(color:Colors.black87, fontSize: 15)),
          ])),
    );
  }
}
class NavyPier  extends StatelessWidget {
  const NavyPier({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navy Pier',style:TextStyle(color:Colors.white, fontSize: 20)),
      ),

      body: Center(
          child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(navy),
                    fit: BoxFit.fill
                ),
              ),

            ),
            Text('Navy Pier', style:TextStyle(color:Colors.black, fontSize: 24)),
            Text("\nNavy Pier is a 3,300-foot-long pier on the shoreline of Lake Michigan, located in the Streeterville neighborhood of the Near North Side community area in Chicago. Navy Pier encompasses over 50 acres (20 ha) of parks, gardens, shops, restaurants, family attractions and exhibition facilities and is one of the top destinations in the Midwestern United States, drawing over nine million visitors annually. It is one of the most visited attractions in the entire Midwest and is Chicago's second-most visited tourist attraction.\n\nNavy Pier, Chicago, Illinois - 60611", style:TextStyle(color:Colors.black87, fontSize: 15)),
          ])),
    );
  }
}

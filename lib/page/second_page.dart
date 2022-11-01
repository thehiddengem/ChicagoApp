import 'package:flutter/material.dart';

// This page need to show 3 events: Jack Pumpking Patch, Haunted House, Bar Crawl
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        backgroundColor: Color(0x838b83),
        appBar: AppBar(title: Text('Events',style: TextStyle(color: Colors.white, fontSize:22),)),
        body: BodyWidget(),

      ),
    );
  }
}

String greek = 'assets/greek_town.jpg';
String human = 'assets/human.jpg';
String light ='assets/light.jpg';

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
            backgroundImage: NetworkImage(greek),
          ),
          title: Text('Taste of Greektown',style:TextStyle(color:Colors.black87, fontSize: 20)),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => GreekTown(),
              ),
            );
          },
        ),
        Divider(height:70.0),

        ListTile(

          visualDensity: VisualDensity(horizontal: 0, vertical: 4),
          horizontalTitleGap: 16.0,
          leading: CircleAvatar(
            backgroundImage: NetworkImage(human),
          ),
          title: Text('Human+Nature',style:TextStyle(color:Colors.black87, fontSize: 20)),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HumanNature(),
              ),
            );
          },
        ),
        Divider(height:70.0),
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: 4),
          horizontalTitleGap: 16.0,
          leading: CircleAvatar(
            backgroundImage: NetworkImage(light),
          ),
          title: Text('Lightscape',style:TextStyle(color:Colors.black87, fontSize: 20)),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Lightscape(),
              ),
            );
          },
        ),
        Divider(height:70.0),
      ],
    );
  }
}

class GreekTown  extends StatelessWidget {
  const GreekTown({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Taste of Greektown',style:TextStyle(color:Colors.white, fontSize: 20)),
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
                    image: NetworkImage(greek),
                    fit: BoxFit.fill
                ),
              ),

            ),
            Text('Taste of Greektown', style:TextStyle(color:Colors.black, fontSize: 24)),
            Text("\nHellenic pride will take center stage when this acclaimed annual culinary fest on Halsted Street in Chicago’s happening West Loop returns for its 31st year. As most Chicagoans know, this strip of Halsted has been the epicenter of the city’s acclaimed Greek restaurant scene for decades. Quite simply, Taste of Greektown is a romantic weekend celebration for lovers of Mediterranean culture. Blending Old World traditions with a 21st century freshness, the tantalizing food and spirits from neighborhood eateries will again be the main attraction. There will also be plenty of music and entertainment including Greek bands and games for both kids and families. Opa!\n\n Chicag, Illinois, 60607", style:TextStyle(color:Colors.black87, fontSize: 15)),
    ])),
    );
  }
}
class HumanNature  extends StatelessWidget {
  const HumanNature({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('“Human+Nature”',style:TextStyle(color:Colors.white, fontSize: 20)),
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
                    image: NetworkImage(human),
                    fit: BoxFit.fill
                ),
              ),

            ),
            Text('“Human+Nature”', style:TextStyle(color:Colors.black, fontSize: 24)),
            Text("\nSee eight towering sculptures by South African artist Daniel Popper at the Morton Arboretum's new outdoor exhibition, which spreads the 15- to 26-foot-tall works throughout the natural area. Made of glass-reinforced concrete, wood, fiberglass and steel, the one-of-a-kind pieces in Human+Nature depict human figures that evoke the natural landscape they're set amid, including a pair of 36-foot-long hands reaching out from a grove of oak trees and a maternal figure that springs up amid magnolia trees.\n\n4100 Lincoln Ave, Lisle, IL 60532 ", style:TextStyle(color:Colors.black87, fontSize: 15)),
    ])),
    );
  }
}
class Lightscape  extends StatelessWidget {
  const Lightscape({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lightscape',style:TextStyle(color:Colors.white, fontSize: 20)),
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
                    image: NetworkImage(light),
                    fit: BoxFit.fill
                ),
              ),

            ),
            Text('Lightscape', style:TextStyle(color:Colors.black, fontSize: 24)),
            Text("\nThe Chicago Botanic Garden hosts this annual (and quick to sell out) display of festive lights, giving guests a host of shimmering reasons to visit the forest preserve during the holiday season. Set along an illuminated path, the after-dark experience features a series of installations to explore, including a 110-foot tunnel made up of 100,000 lights and a group of trees festooned in bulbs that sing holiday songs. This year, check out new exhibits like Starscape, a series of more than 700 handmade acrylic stars lighting up a 130-foot-long tunnel.\n\n1000 Lake Cook Rd, Glencoe, IL 60022", style:TextStyle(color:Colors.black87, fontSize: 15)),
                ])),
    );
  }
}
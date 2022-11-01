import 'package:flutter/material.dart';

// Chicago
// Bulls, White Sox and Fire
class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        backgroundColor: Color(0xFFA4BEDA),
        appBar: AppBar(title: Text('Sports',style: TextStyle(color: Colors.white, fontSize:22),)),
        body: BodyWidget(),
      ),
    );
  }
}

String bulls = 'assets/bulls.jpg';
String sox = 'assets/sox.jpg';
String fire ='assets/fire.jpg';
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
            backgroundImage: NetworkImage(bulls),
          ),
          title: Text('Chicago Bulls',style:TextStyle(color:Colors.black87, fontSize: 20)),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChicagoBulls(),
              ),
            );
          },
        ),
        Divider(height:70.0),

        ListTile(

          visualDensity: VisualDensity(horizontal: 0, vertical: 4),
          horizontalTitleGap: 16.0,
          leading: CircleAvatar(
            backgroundImage: NetworkImage(sox),
          ),
          title: Text('White Sox',style:TextStyle(color:Colors.black87, fontSize: 20)),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WhiteSox(),
              ),
            );
          },
        ),
        Divider(height:70.0),
        ListTile(
          visualDensity: VisualDensity(horizontal: 0, vertical: 4),
          horizontalTitleGap: 16.0,
          leading: CircleAvatar(
            backgroundImage: NetworkImage(fire),
          ),
          title: Text('Chicago Fire',style:TextStyle(color:Colors.black87, fontSize: 20)),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ChicagoFire(),
              ),
            );
          },
        ),
        Divider(height:70.0),
      ],
    );
  }
}

class ChicagoBulls  extends StatelessWidget {
  const ChicagoBulls({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chicago Bulls', style:TextStyle(color:Colors.white, fontSize: 20)),
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
                    image: NetworkImage(bulls),
                    fit: BoxFit.fill
                ),
              ),

            ),
            Text('Chicago Bulls', style:TextStyle(color:Colors.black, fontSize: 24)),
            Text("\nThe Chicago Bulls are an American professional basketball team based in Chicago. The Bulls compete in the National Basketball Association as a member of the league's Eastern Conference Central Division. The team was founded on January 16, 1966, and played its first game during the 1966–67 NBA season.\n\n1901 West Madison Street, Chicago, IL 60612", style:TextStyle(color:Colors.black87, fontSize: 15)),
          ])),
    );
  }
}
class WhiteSox  extends StatelessWidget {
  const WhiteSox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('White Sox', style:TextStyle(color:Colors.white, fontSize: 20)),
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
                    image: NetworkImage(sox),
                    fit: BoxFit.fill
                ),
              ),

            ),
            Text('White Sox', style:TextStyle(color:Colors.black, fontSize: 24)),
            Text("\nThe Chicago White Sox are an American professional baseball team based in Chicago. The White Sox compete in Major League Baseball as a member club of the American League Central division. The team is owned by Jerry Reinsdorf, and plays its home games at Guaranteed Rate Field, located on Chicago's South Side.\n\n333 W 35th St, Chicago, IL", style:TextStyle(color:Colors.black87, fontSize: 15)),
          ])),
    );
  }
}
class ChicagoFire  extends StatelessWidget {
  const ChicagoFire({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chicago Fire', style:TextStyle(color:Colors.white, fontSize: 20)),
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
                    image: NetworkImage(fire),
                    fit: BoxFit.fill
                ),
              ),

            ),
            Text('Chicago Fire', style:TextStyle(color:Colors.black, fontSize: 24)),
            Text("\nChicago Fire Football Club is an American professional soccer franchise based in Chicago. The team competes in Major League Soccer as a member of the league's Eastern Conference, having moved to the conference in 2002\n\nChicago, IL", style:TextStyle(color:Colors.black87, fontSize: 15)),
          ])),
    );
  }
}
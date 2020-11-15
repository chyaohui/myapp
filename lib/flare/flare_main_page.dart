import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlareMainPage extends StatefulWidget {
  @override
  _FlareMainPageState createState() => _FlareMainPageState();
}

class _FlareMainPageState extends State<FlareMainPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlareAnimation"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: ListTile(
                contentPadding: EdgeInsets.all(20),
                trailing: Icon(Icons.navigate_next),
                title: Text("Penguin Dance"),
                onTap: () {
                  Navigator.pushNamed(context, "/flare_penguin");
                },
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Teddy"),
              onTap: () {
                Navigator.pushNamed(context, "/flare_teddy");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Guss"),
              onTap: () {
                Navigator.pushNamed(context, "/flare_guss");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Space Refresh"),
              onTap: () {
                Navigator.pushNamed(context, "/flare_space");
              },
            ),
            ListTile(
              contentPadding: EdgeInsets.all(20),
              trailing: Icon(Icons.navigate_next),
              title: Text("Slider"),
              onTap: () {
                Navigator.pushNamed(context, "/flare_slider");
              },
            ),
            Container(
              child: ListTile(
                contentPadding: EdgeInsets.all(20),
                trailing: Icon(Icons.navigate_next),
                title: Text("Simple"),
                onTap: () {
                  Navigator.pushNamed(context, "/flare_simple");
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

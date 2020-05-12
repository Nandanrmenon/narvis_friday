import 'package:flutter/material.dart';
import 'package:friday/pages/about.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Friday',
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.greenAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        accentColor: Colors.greenAccent,
        brightness: Brightness.dark,
      ),
      home: MyHomePage(title: 'Friday'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 125,
              margin: EdgeInsets.only(top: 10.0, bottom: 20.0),
              child: ClipRRect(
                borderRadius: new BorderRadius.circular(25),
                child: Image.asset(
                  'res/narvis.png',
                  width: 125,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('About'),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => AboutView()));
                    },
                    leading: Icon(Icons.info_outline),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.only(bottom: 20.0),
              child: Text('New features coming soon, waiting for your requests !', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w300),),
            ),
          ],
        ),
      ),
    );
  }
}

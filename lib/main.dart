import 'package:flutter/material.dart';
import 'package:watchapp/SmartWatchPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'SourceSansPro'),
    );
  }
}

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      body: Column(
        children: <Widget>[
          SafeArea(
            child: Row(
              children: <Widget>[
                Icon(Icons.cancel),
              ],
            ),
          ),
          SizedBox(
            width: 270,
            child: Divider(thickness: 4, color: Colors.orange[600]),
          ),
          Text('Discover The Future',
              style: TextStyle(fontSize: 23.0, color: Colors.orange)),
          SizedBox(
            height: 25,
            width: 270,
            child: Divider(thickness: 4, color: Colors.orange[600]),
          ),
          SizedBox(height: 15),
          Container(
            width: 220,
            height: 220,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Tracking', style: TextStyle(fontSize: 20.0)),
                Icon(
                  Icons.timer,
                  size: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('keep track of your workouts, steps and sleep'),
                )
              ],
            ),
          ),
          Image.asset('images/watches.png'),
          RaisedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SmartWatchPage(),
                  ));
            },
            color: Colors.orange[200],
            child: Text('GET STARTED'),
          )
        ],
      ),
    );
  }
}

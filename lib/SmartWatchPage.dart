import 'package:flutter/material.dart';

class SmartWatchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        title: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Text(
            'SmartWatch',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      drawer: Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('Get Energized',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4)),
            Text('Your New Personel Health Coach',
                style: TextStyle(
                    color: Colors.orange, fontSize: 17, letterSpacing: 3)),
                    SizedBox(height: 20),
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/smartWatch.png')),
                  border: Border.all(width: 19, color: Colors.orange),
                  borderRadius: BorderRadius.circular(70)),
            ),
            SizedBox(height:35),
            Container(
              width: 230,
              height: 47,
              child: RaisedButton(
                textColor: Colors.white,
                color: Colors.orange[400],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                onPressed: () {},
                child: Text('Buy Now'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

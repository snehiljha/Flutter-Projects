import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 150.0,
              backgroundImage: AssetImage('images/golu.jpg'),
            ),
            Text(
              "SNEHIL JHA",
              style: TextStyle(
                fontFamily: 'GreatVibes',
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Creative Designer",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 25.0,
                color: Colors.grey.shade900,
              ),
            ),
            SizedBox(
              height: 25.0,
              width: 175.0,
              child: Divider(
                color: Colors.black,
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: Padding(
                padding: EdgeInsets.all(25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.black,
                  ),
                  title: Text(
                    "+91 7986265030",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.black,
                  ),
                  title: Text(
                    "snehiljha2000@gmail.com",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}

// Row(
// children: [
// Icon(
// Icons.phone,
// color: Colors.black,
// ),
// SizedBox(
// width: 10.0,
// ),
// Text(
// "+91 7986265030",
// style: TextStyle(
// fontWeight: FontWeight.bold,
// fontSize: 25.0,
// color: Colors.black87,
// ),
// ),
// ],
// ),

// Row(
// children: [
// Icon(
// Icons.email,
// color: Colors.black,
// ),
// SizedBox(
// width: 10.0,
// ),
// Text(
// "snehiljha2000@gmail.com",
// style: TextStyle(
// fontWeight: FontWeight.bold,
// fontSize: 25.0,
// color: Colors.black87,
// ),
// ),
// ],
// ),

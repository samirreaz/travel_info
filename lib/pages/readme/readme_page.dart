import 'package:flutter/material.dart';

class ReadmePage extends StatelessWidget {
  const ReadmePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Readme'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Welcome to Dhaka city',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Text(
              '''


This app is made for travelers to Dhaka. You can use this app for make easier to go your destinations bus stop. By this app you will get Dhaka city all bus route  . When the application will observe the location of the user, then it display your location on the route  . Then when you give your final destination then app will give you all route information about his destination. 

Life is more important than time. So don’t hurry in road.

In emergency situation Police Help Line : 999
''',
              style: TextStyle(
                fontSize: 18,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}

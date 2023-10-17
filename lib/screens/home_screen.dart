import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant Name'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/restaurant_logo.png', height: 150),
            Text('Welcome to Restaurant Name'),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/menu');
              },
              child: Text('View Menu'),
            ),
          ],
        ),
      ),
    );
  }
}

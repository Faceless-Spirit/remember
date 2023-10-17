import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Add user profile information and options here
            ElevatedButton(
              onPressed: () {
                // Add logic to sign out
              },
              child: Text('Sign Out'),
            ),
          ],
        ),
      ),
    );
  }
}

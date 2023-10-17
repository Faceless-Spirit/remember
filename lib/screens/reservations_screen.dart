import 'package:flutter/material.dart';

class ReservationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reservations'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Select a reservation date and time:'),
            // Add a date and time picker here
            ElevatedButton(
              onPressed: () {
                // Add logic to confirm reservation
              },
              child: Text('Confirm Reservation'),
            ),
          ],
        ),
      ),
    );
  }
}

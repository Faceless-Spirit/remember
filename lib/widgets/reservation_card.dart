import 'package:flutter/material.dart';
import 'package:your_app/models/reservation.dart';

class ReservationCard extends StatelessWidget {
  final Reservation reservation;

  ReservationCard(this.reservation);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: ListTile(
        title: Text('Reservation #${reservation.reservationNumber}'),
        subtitle: Text('Date: ${reservation.date}, Time: ${reservation.time}'),
        onTap: () {
          // Handle reservation details or edit
        },
      ),
    );
  }
}

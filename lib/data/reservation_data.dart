class Reservation {
  final String id;
  final DateTime dateTime;
  final int partySize;
  final String contactName;
  final String contactPhone;

  Reservation({
    required this.id,
    required this.dateTime,
    required this.partySize,
    required this.contactName,
    required this.contactPhone,
  });
}

class ReservationData {
  static List<Reservation> _reservations = [];

  static void addReservation(
      DateTime dateTime,
      int partySize,
      String contactName,
      String contactPhone,
      ) {
    final newReservation = Reservation(
      id: DateTime.now().toString(),
      dateTime: dateTime,
      partySize: partySize,
      contactName: contactName,
      contactPhone: contactPhone,
    );
    _reservations.add(newReservation);
  }

  static List<Reservation> getReservations() {
    return _reservations;
  }
}

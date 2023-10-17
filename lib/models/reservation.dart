class Reservation {
  final String id;
  final DateTime dateTime; // Date and time of the reservation
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

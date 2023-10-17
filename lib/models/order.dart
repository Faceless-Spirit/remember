import 'menu_item.dart';

class Order {
  final String id;
  final List<MenuItem> items; // List of menu items in the order
  final double totalAmount;
  final DateTime timestamp;
  final String status; // Order status (e.g., "Pending", "In Progress", "Delivered")

  Order({
    required this.id,
    required this.items,
    required this.totalAmount,
    required this.timestamp,
    required this.status,
  });
}

import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget {
  final String orderNumber;
  final double totalAmount;
  final String status;

  OrderCard({
    required this.orderNumber,
    required this.totalAmount,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: ListTile(
        title: Text('Order #$orderNumber'),
        subtitle: Text('Total: \$${totalAmount.toStringAsFixed(2)}'),
        trailing: Chip(
          label: Text(status),
          backgroundColor: _getStatusColor(status),
        ),
        onTap: () {
          // Navigate to order details screen.
        },
      ),
    );
  }

  Color _getStatusColor(String status) {
    // Implement logic to determine the color based on the order status.
    // For example, use green for "Delivered," yellow for "Preparing," etc.
    return Colors.green;
  }
}

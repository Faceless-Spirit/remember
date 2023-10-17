import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orders'),
      ),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];
          return ListTile(
            title: Text('Order #${order.orderNumber}'),
            subtitle: Text('Total: \$${order.total.toStringAsFixed(2)}'),
            trailing: Text(order.status),
            onTap: () {
              // Add logic to view order details
            },
          );
        },
      ),
    );
  }
}

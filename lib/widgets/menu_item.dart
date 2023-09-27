import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  MenuItem({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(imageUrl, width: 60, height: 60, fit: BoxFit.cover),
      title: Text(name),
      subtitle: Text(description),
      trailing: Text('\$${price.toStringAsFixed(2)}'),
      onTap: () {
        // Implement functionality to add this item to the cart or navigate to details.
      },
    );
  }
}

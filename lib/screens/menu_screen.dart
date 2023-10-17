import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          final menuItem = menuItems[index];
          return ListTile(
            leading: Image.asset(menuItem.image),
            title: Text(menuItem.name),
            subtitle: Text(menuItem.description),
            trailing: Text('\$${menuItem.price.toStringAsFixed(2)}'),
            onTap: () {
              // Add logic to view item details or add to cart
            },
          );
        },
      ),
    );
  }
}

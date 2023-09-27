import 'package:flutter/material.dart';

class RestaurantAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Restaurant Name'),
      actions: [
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {
            // Open the shopping cart or orders screen.
          },
        ),
      ],
    );
  }
}

class MenuItem {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  MenuItem({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}

class MenuData {
  // Simulated list of menu items (replace with actual data source)
  static List<MenuItem> _menuItems = [
    MenuItem(
      id: '1',
      name: 'Spaghetti Carbonara',
      description: 'Creamy pasta with bacon and eggs',
      price: 12.99,
      imageUrl: 'assets/images/spaghetti.jpg',
    ),
    // Add more menu items here
  ];

  static List<MenuItem> getMenuItems() {
    return _menuItems;
  }

  static MenuItem getMenuItemById(String id) {
    return _menuItems.firstWhere((item) => item.id == id);
  }
}

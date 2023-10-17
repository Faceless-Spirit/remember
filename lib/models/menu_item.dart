class MenuItem {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  final List<String> allergens; // List of allergens (e.g., "Gluten-Free", "Vegan")

  MenuItem({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    required this.allergens,
  });
}

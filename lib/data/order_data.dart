class OrderItem {
  final String id;
  final String menuItemId;
  final int quantity;

  OrderItem({
    required this.id,
    required this.menuItemId,
    required this.quantity,
  });
}

class Order {
  final String id;
  final List<OrderItem> items;
  final double totalAmount;
  final DateTime dateTime;

  Order({
    required this.id,
    required this.items,
    required this.totalAmount,
    required this.dateTime,
  });
}

class OrderData {
  static List<Order> _orders = [];

  static void addOrder(List<OrderItem> orderItems, double totalAmount) {
    final newOrder = Order(
      id: DateTime.now().toString(),
      items: orderItems,
      totalAmount: totalAmount,
      dateTime: DateTime.now(),
    );
    _orders.add(newOrder);
  }

  static List<Order> getOrders() {
    return _orders;
  }
}

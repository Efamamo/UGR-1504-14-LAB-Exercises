void main() {
  Map<String, int> shoppingCart = {};

  // Add items to the cart
  addToCart(shoppingCart, 'Apple', 3);
  addToCart(shoppingCart, 'Banana', 5);
  addToCart(shoppingCart, 'Orange', 2);
  addToCart(shoppingCart, 'Apple', 2); // Increase quantity of existing item

  // Print the cart contents
  print('Shopping Cart: $shoppingCart');

  // Calculate and print the total price
  double totalPrice = calculateTotalPrice(shoppingCart);
  print('Total Price: \$${totalPrice.toStringAsFixed(2)}');

  // Remove items from the cart
  removeFromCart(shoppingCart, 'Banana');
  removeFromCart(shoppingCart, 'Grapes'); // Item not in the cart

  // Print the updated cart contents
  print('Updated Shopping Cart: $shoppingCart');

  // Calculate and print the updated total price
  totalPrice = calculateTotalPrice(shoppingCart);
  print('Updated Total Price: \$${totalPrice.toStringAsFixed(2)}');
}

void addToCart(Map<String, int> cart, String product, int quantity) {
  cart.update(product, (value) => value + quantity, ifAbsent: () => quantity);
}

void removeFromCart(Map<String, int> cart, String product) {
  cart.remove(product);
}

double calculateTotalPrice(Map<String, int> cart) {
  double totalPrice = 0;

  cart.forEach((product, quantity) {
    double price = getProductPrice(product);
    totalPrice += price * quantity;
  });

  return totalPrice;
}

double getProductPrice(String product) {
  // Replace with actual price lookup logic
  if (product == 'Apple') {
    return 0.50;
  } else if (product == 'Banana') {
    return 0.25;
  } else if (product == 'Orange') {
    return 0.75;
  } else {
    return 0.0;
  }
}
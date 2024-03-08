class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double calculateTotalCost() {
    return price * quantity;
  }
}

void main() {
  // Creating a Product object p1
  Product p1 = Product("Smartwatch", 150.0, 4);

  // Calculating and displaying the total cost of the product
  print("Product Details:");
  print("Name: ${p1.name}");
  print("Price: \$${p1.price}");
  print("Quantity: ${p1.quantity}");
  print("Total Cost: \$${p1.calculateTotalCost()}");
}
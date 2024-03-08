class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double calculateArea() {
    return width * height;
  }

  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

void main() {
  // Creating a Rectangle object r1
  Rectangle r1 = Rectangle(5.0, 3.0);

  // Calculating and displaying area and perimeter of the rectangle
  print("Rectangle Details:");
  print("Width: ${r1.width}");
  print("Height: ${r1.height}");
  print("Area: ${r1.calculateArea()}");
  print("Perimeter: ${r1.calculatePerimeter()}");
}
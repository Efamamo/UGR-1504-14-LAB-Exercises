import 'dart:math';

abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return pi * radius * radius;
  }
}

class Square extends Shape {
  double side;

  Square(this.side);

  @override
  double calculateArea() {
    return side * side;
  }
}

void main() {
  
  Circle circle = Circle(5.0);
  print("Area of the Circle with radius ${circle.radius}: ${circle.calculateArea()}");

  
  Square square = Square(4.0);
  print("Area of the Square with side ${square.side}: ${square.calculateArea()}");
}

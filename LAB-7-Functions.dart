double calculateSum(double num1, double num2) {
  return num1 + num2;
}

void main() {
  double number1 = 5.5;
  double number2 = 3.3;

  double sum = calculateSum(number1, number2);

  print("The sum of $number1 and $number2 is: $sum");
}
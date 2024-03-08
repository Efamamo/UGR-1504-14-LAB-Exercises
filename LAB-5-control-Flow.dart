void main() {
  double num1 = 10;
  double num2 = 5;
  String operator = "+";
  double result;

  switch (operator) {
    case "+":
      result = num1 + num2;
      break;
    case "-":
      result = num1 - num2;
      break;
    case "*":
      result = num1 * num2;
      break;
    case "/":
      result = num1 / num2;
      break;
    default:
      print("Invalid operator");
      return;
  }

  print("Result: $result");
}
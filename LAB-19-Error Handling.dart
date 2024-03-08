import 'dart:io';

void main() {
  print("Enter a number: ");
  String? userInput = stdin.readLineSync();
  
  try {
    if (userInput != null) {
      int number = int.parse(userInput);
      print("The number is: $number");
    } else {
      print("Invalid input! Please enter a valid number.");
    }
  } catch (e) {
    print("Invalid input! Please enter a valid number.");
  }
}
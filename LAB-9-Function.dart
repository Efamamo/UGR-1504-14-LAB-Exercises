String reverseString(String input) {
  List<String> characters = input.split('');
  characters = characters.reversed.toList();
  return characters.join('');
}

void main() {
  String input = "Hello, World!";
  String reversed = reverseString(input);
  print("Reversed string: $reversed");
}
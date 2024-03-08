import 'dart:math';

void main() {
  List<int> randomNumbers = List.generate(20, (_) => Random().nextInt(20));
  print('Random Numbers: $randomNumbers');

  Set<int> uniqueNumbers = Set<int>.from(randomNumbers);
  print('Unique Numbers: $uniqueNumbers');
}

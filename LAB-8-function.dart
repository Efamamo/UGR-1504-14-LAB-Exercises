import 'dart:math';

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }

  for (int i = 2; i <= sqrt(number); i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}

void main() {
  int start = 2;
  int end = 20;

  print("Prime numbers between $start and $end:");

  for (int number = start; number <= end; number++) {
    if (isPrime(number)) {
      print(number);
    }
  }
}
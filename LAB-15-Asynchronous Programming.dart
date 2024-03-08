import 'dart:async';
import 'dart:math';

Future<String> fetchQuote() async {
  // Simulating a network call delay
  await Future.delayed(Duration(seconds: 2));

  // List of random quotes
  List<String> quotes = [
    "The only way to do great work is to love what you do. - Steve Jobs",
    "Stay hungry, stay foolish. - Steve Jobs",
    "Innovation distinguishes between a leader and a follower. - Steve Jobs"
  ];

  // Selecting a random quote
  Random random = Random();
  int index = random.nextInt(quotes.length);

  return quotes[index];
}

void main() async {
  // Waiting for the quote to be fetched
  String quote = await fetchQuote();

  // Printing the fetched quote
  print("Random Quote: $quote");
}
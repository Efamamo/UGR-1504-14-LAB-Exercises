void main() {
  List<String> favoriteHobbies = [];

  // Check if the list is empty
  print('Is the list of favorite hobbies empty? ${favoriteHobbies.isEmpty}');

  // Add hobbies to the list
  favoriteHobbies.add('Reading');
  favoriteHobbies.add('Painting');
  favoriteHobbies.add('Playing guitar');
  favoriteHobbies.add('Running');

  // Print the list of favorite hobbies
  print('Favorite Hobbies: $favoriteHobbies');

  // Remove a hobby from the list
  favoriteHobbies.remove('Painting');

  // Print the updated list of favorite hobbies
  print('Updated Favorite Hobbies: $favoriteHobbies');

  // Sort the list in alphabetical order
  favoriteHobbies.sort();

  // Print the sorted list of favorite hobbies
  print('Sorted Favorite Hobbies: $favoriteHobbies');

  // Check if the list is empty after removing items
  print('Is the list of favorite hobbies empty? ${favoriteHobbies.isEmpty}');
}
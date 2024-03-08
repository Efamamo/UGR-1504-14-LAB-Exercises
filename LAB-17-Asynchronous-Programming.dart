import 'dart:async';

Future<List<String>> loadDataFromDatabase() async {
  // Simulating a database query delay of 3 seconds
  await Future.delayed(Duration(seconds: 3));

  // Simulated data retrieved from the database
  List<String> data = ['Data1', 'Data2', 'Data3', 'Data4', 'Data5'];

  return data;
}

void main() async {
  print("Loading data from the database...");

  // Simulating asynchronous data loading
  List<String> loadedData = await loadDataFromDatabase();

  // Displaying the loaded data
  print("Data loaded successfully:");
  loadedData.forEach((item) {
    print(item);
  });
}
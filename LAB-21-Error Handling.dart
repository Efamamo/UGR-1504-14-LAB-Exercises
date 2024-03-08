import 'dart:io';

void readFileFromDisk(String filePath) {
  try {
    File file = File(filePath);
    List<String> lines = file.readAsLinesSync();
    lines.forEach((line) => print(line));
  } catch (e) {
    if (e is FileSystemException) {
      print('Error: File not found or cannot be accessed.');
    } else {
      print('An error occurred: $e');
    }
  }
}

void main() {
  String filePath = 'path/to/your/file.txt';

  readFileFromDisk(filePath);
}
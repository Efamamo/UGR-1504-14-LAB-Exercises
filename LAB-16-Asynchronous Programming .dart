import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> downloadFile(String url, String savePath) async {
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    File file = File(savePath);
    await file.writeAsBytes(response.bodyBytes);
    print('File downloaded successfully!');
  } else {
    print('Failed to download file. Status code: ${response.statusCode}');
  }
}

void main() async {
  String url = 'http://www.example.com/file.zip';
  String savePath = 'downloaded_file.zip';

  print('Downloading file from $url...');
  
  await downloadFile(url, savePath);
}

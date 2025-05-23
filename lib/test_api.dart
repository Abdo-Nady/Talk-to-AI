import 'dart:convert';
import 'package:http/http.dart' as http;

void main() async {
  const apiKey = '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'; // Replace with your actual token
  const apiUrl = 'https://api-inference.huggingface.co/models/microsoft/DialoGPT-medium';
  const inputMessage = 'Hello there!';

  final response = await http.post(
    Uri.parse(apiUrl),
    headers: {
      'Authorization': 'Bearer $apiKey',
      'Content-Type': 'application/json',
    },
    body: jsonEncode({'inputs': inputMessage}),
  );

  print('Status Code: ${response.statusCode}');
  print('Body: ${response.body}');
}

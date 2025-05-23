import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const apiKey = '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'; // Replace with your actual token
  static const apiUrl = 'https://api-inference.huggingface.co/models/microsoft/DialoGPT-medium';

  static Future<String> sendMessage(String message) async {
    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {
          'Authorization': 'Bearer $apiKey',
          'Content-Type': 'application/json',
        },
        body: jsonEncode({'inputs': message}),
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);

        print('Response Data: $data'); // Debugging line to print the data

        // Check the type of 'data' to avoid type mismatch
        if (data is List) {
          final generatedText = data[0]['generated_text'];
          return generatedText ?? 'No response from AI 😔';
        } else if (data is Map) {
          final generatedText = data['generated_text'];
          return generatedText ?? 'No response from AI 😔';
        } else {
          return 'Unknown response format';
        }
      } else {
        print('Status: ${response.statusCode}');
        print('Body: ${response.body}');
        return 'Failed to connect to AI 😓';
      }
    } catch (e) {
      print('Error: $e');
      return 'Failed to connect to AI 😓';
    }
  }
}


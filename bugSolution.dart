```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Use jsonData
    } else {
      // Custom exception for better error handling
      throw HttpException('Failed to load data: ${response.statusCode}', response.statusCode);
    }
  } on HttpException catch (e) {
    // Handle HTTP exceptions specifically
    print('HTTP Error: ${e.message} (Status Code: ${e.statusCode})');
  } catch (e) {
    // Handle other exceptions
    print('Error fetching data: $e');
    // Rethrow the exception to be handled at a higher level
    rethrow;
  }
}

// Custom Exception
class HttpException implements Exception {
  final String message;
  final int statusCode;
  HttpException(this.message, this.statusCode);
}
```
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

void main(List<String> arguments) async {
  // This example uses the Google Books API to search for books about http.
  // https://developers.google.com/books/docs/overview
  // var url = Uri.http('localhost:8000', '/api/auth/login');

  final String url = 'https://dev-api.mylink.kz/hrm/api/auth/login'; // Replace with your API URL
  final Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  final Map<String, String> body = {
    'email': 'b.raimbekov@mystartups.kz',
    'password': 'Baskino123',
  };
  // Make a POST request to your backend API to authenticate the user
  final response = await http.post(
    Uri.parse(url),
    headers: headers,
    body: convert.jsonEncode(body),
  );

  // Await the http get response, then decode the json-formatted response.
  if (response.statusCode == 200) {
    var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
    var itemCount = jsonResponse['totalItems'];
    print('Number of books about http: $itemCount.');
  } else {
    print('Request failed with status: ${response.statusCode}.');
  }
}

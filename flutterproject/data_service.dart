import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<String>> fetchItems() async {
  final response = await http.get(Uri.parse('page3.json'));

  if (response.statusCode == 200) {
    final List<dynamic> data = json.decode(response.body)['page3'];
    return List<String>.from(data);
  } else {
    throw Exception('Failed to load data');
  }
}

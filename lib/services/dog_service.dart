import 'package:http/http.dart' as http;
import 'dart:convert';

class DogService {
  static Future<String> fetchRandomDogImage() async {
    final url = Uri.parse('https://dog.ceo/api/breeds/image/random');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data['message']; 
    } else {
      throw Exception('Erro ao carregar a imagem');
    }
  }
}

import 'package:flutter/material.dart';
import '../services/dog_service.dart';

class DogPage extends StatefulWidget {
  const DogPage({super.key});

  @override
  State<DogPage> createState() => _DogPageState();
}

class _DogPageState extends State<DogPage> {
  String? dogImageUrl;
  bool isLoading = false;

  Future<void> fetchDogImage() async {
    setState(() {
      isLoading = true;
    });

    try {
      final imageUrl = await DogService.fetchRandomDogImage();
      setState(() {
        dogImageUrl = imageUrl;
      });
    } catch (error) {
      print('Erro: $error');
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchDogImage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dog App'),
      ),
      body: Center(
        child: isLoading
            ? const CircularProgressIndicator()
            : dogImageUrl != null
            ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              dogImageUrl!,
              height: 350,
              width: 300,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: fetchDogImage,
              child: const Text('Carregar Outra Imagem'),
            ),
          ],
        )
            : const Text('Nenhuma imagem encontrada'),
      ),
    );
  }
}

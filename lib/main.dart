import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/favorites_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => FavoritesProvider(),
      child: const BantabaApp(),
    ),
  );
}

class BantabaApp extends StatelessWidget {
  const BantabaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<Map<String, String>> products = const [
    {
      "name": "iPhone 11",
      "price": "D15,000",
      "image": "https://picsum.photos/300"
    },
    {
      "name": "Toyota Corolla",
      "price": "D250,000",
      "image": "https://via.placeholder.com/300"
    },
    {
      "name": "Farm Eggs (Tray)",
      "price": "D350",
      "image": "https://via.placeholder.com/300"
    },
    {
      "name": "Sofa Set",
      "price": "D8,000",
      "image": "https://via.placeholder.com/300"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bantaba Marketplace")),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          final product = products[index];

          return Consumer<FavoritesProvider>(
            builder: (context, favoritesProvider, child) {
              final isFav =
                  favoritesProvider.isFavorite(product["name"]!);

              return InkWell(
                onTap: () {
                  print("Tapped ${product["name"]}");
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 5,
                  child: Column(
                    children: [
                      Expanded(
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(15)),
                              child: Image.network(
                                product["image"]!,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              top: 5,
                              right: 5,
                              child: IconButton(
                                icon: Icon(
                                  isFav
                                      ? Icons.favorite
                                      : Icons.favorite_border,
                                  color: Colors.red,
                                ),
                                onPressed: () {
                                  favoritesProvider.toggleFavorite(
                                      product["name"]!);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Text(
                              product["name"]!,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              product["price"]!,
                              style: const TextStyle(
                                  color: Colors.green),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
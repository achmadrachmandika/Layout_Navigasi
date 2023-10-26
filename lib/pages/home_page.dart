import 'package:flutter/material.dart';
import 'package:flutter_uts/models/item.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
        name: 'Gula',
        price: 16000,
        picture: "assets/gula.jpg",
        stock: 100,
        rating: 5.0),
    Item(
        name: 'Garam',
        price: 5000,
        picture: "assets/garam.jpg",
        stock: 100,
        rating: 5.0),
    Item(
        name: 'Beras',
        price: 60000,
        picture: "assets/beras.jpg",
        stock: 150,
        rating: 5.0),
    Item(
        name: 'Santan',
        price: 5000,
        picture: "assets/santan.jpg",
        stock: 50,
        rating: 5.0),
    Item(
        name: 'Santan',
        price: 5000,
        picture: "assets/santan.jpg",
        stock: 50,
        rating: 5.0),
    Item(
        name: 'Santan',
        price: 5000,
        picture: "assets/santan.jpg",
        stock: 50,
        rating: 5.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Randall Store',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Material(
        child: Container(
          margin: const EdgeInsets.all(8),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.55,
                crossAxisSpacing: 10,
                mainAxisSpacing: 15),
            itemCount: items.length,
            itemBuilder: (context, index) {
              final item = items[index];
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/item',
                    arguments: item,
                  );
                },
                child: ListCard(item: item),
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
          height: 40,
          color: Colors.orange,
          child: Center(
            child: Text(
              'Achmad Rachmandika Rizky Pratama | 2041720125',
            ),
          )),
    );
  }
}

class ListCard extends StatelessWidget {
  const ListCard({
    super.key,
    required this.item,
  });

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 8,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: "Item Image",
              child: AspectRatio(
                aspectRatio: 16 / 10,
                child: Image.network(item.picture,
                    width: double.infinity, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.name,
                      textAlign: TextAlign.start,
                      style: const TextStyle(fontSize: 24),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text('Rp ${item.price.toString()}',
                        textAlign: TextAlign.start,
                        style:
                            const TextStyle(fontSize: 16, color: Colors.blue)),
                    const SizedBox(
                      height: 2,
                    ),
                    const Text(
                      'Deskripsi',
                      style: TextStyle(fontSize: 12, color: Colors.blueGrey),
                    ),
                  ],
                ))
          ],
        ));
  }
}

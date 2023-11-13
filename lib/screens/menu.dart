import 'package:flutter/material.dart';
import 'package:bujaohardware/screens/itemform.dart';
import 'package:bujaohardware/screens/itemlist.dart';
import 'package:bujaohardware/widgets/drawer.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final List<ShopItem> items = [
    ShopItem("View Items", Icons.list_alt_rounded),
    ShopItem("Add Item", Icons.add_shopping_cart),
    ShopItem("Logout", Icons.logout),
  ];

  // Define a list of colors
  final List<Color> cardColors = [
    Color.fromARGB(255, 13, 104, 52),
    Color.fromARGB(255, 59, 104, 140),
    Color.fromARGB(255, 53, 44, 97),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bujao Hardware',
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text(
                  'Bujao Hardware',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              GridView.count(
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: items.asMap().entries.map((entry) {
                  final index = entry.key;
                  final item = entry.value;
                  if (index == 1) {
                    final imageUrl = 'https://i.imgur.com/OoEWNCk.jpg';
                    return ImageShopCard(item, imageUrl);
                  } else {
                    final cardColor = cardColors[index % cardColors.length];
                    return ShopCard(item, cardColor);
                  }
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ShopItem {
  final String name;
  final IconData icon;

  ShopItem(this.name, this.icon);
}

class ShopCard extends StatelessWidget {
  final ShopItem item;
  final Color cardColor;

  ShopCard(this.item, this.cardColor, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: cardColor,
      child: InkWell(
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));

          // Navigate ke route yang sesuai (tergantung jenis tombol)
          if (item.name == "Add Item") {
            // TODO: Gunakan Navigator.push untuk melakukan navigasi ke MaterialPageRoute yang mencakup ShopFormPage.
                if (item.name == "Add Item") {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ShopFormPage()));
              }
          } if (item.name == "View Items") {
                if (item.name == "View Items") {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ItemListPage()));
                }
          }

        },
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ImageShopCard extends StatelessWidget {
  final ShopItem item;
  final String imageUrl;

  ImageShopCard(this.item, this.imageUrl, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: () {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));

          if (item.name == "Add Item") {
            // TODO: Gunakan Navigator.push untuk melakukan navigasi ke MaterialPageRoute yang mencakup ShopFormPage.
                if (item.name == "Add Item") {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ShopFormPage()));
              }
          }

        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
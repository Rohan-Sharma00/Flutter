
import 'package:flutter/material.dart';

class products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Catalog',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Product> products = [
  Product(name: 'Television', price: 'Rs 25000', image: 'assets/tv.jpeg'),
  Product(name: 'Mobile Phone', price: 'Rs 15000', image: "assets/mobile.jpeg"),
  Product(name: 'Refrigerator', price: 'Rs 35000', image: 'assets/fridge.jpeg'),
  Product(name: 'Laptop', price: 'Rs 45000', image: 'assets/laptop.jpeg'),
  Product(name: 'Headphones', price: 'Rs 5000', image: 'assets/headphones.jpeg'),
  Product(name: 'Vegetables', price: 'Rs 500', image: 'assets/vegetables.jpeg'),
  Product(name: 'Smartwatch', price: 'Rs 10000', image: 'assets/smartwatch.jpeg'),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Catalog'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(products[index].name),
            subtitle: Text(products[index].price),
            leading: CircleAvatar(
              backgroundImage: AssetImage(products[index].image),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(product: products[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class Product {
  final String name;
  final String price;
  final String image;

  Product({required this.name, required this.price, required this.image});
}

class ProductDetailPage extends StatelessWidget {
  final Product product;

  ProductDetailPage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              product.name,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10),
            Image.asset(
              product.image,
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
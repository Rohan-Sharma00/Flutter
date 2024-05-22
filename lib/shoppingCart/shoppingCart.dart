import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      child: MaterialApp(
        title: 'Shopping App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
         debugShowCheckedModeBanner: false,
        home: MainPage(),
      ),
    );
  }
}

class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});
}

class Cart extends ChangeNotifier {
  List<Product> _items = [];

  List<Product> get items => _items;

  void addToCart(Product product) {
    _items.add(product);
    notifyListeners();
  }

  void removeFromCart(Product product) {
    _items.remove(product);
    notifyListeners();
  }

  double totalPrice() {
    double total = 0;
    _items.forEach((item) {
      total += item.price;
    });
    return total;
  }
}

class MainPage extends StatelessWidget {
  final List<Product> products = [
  Product(name: 'Smart TV', price: 599.99),
  Product(name: 'Ultra HD TV', price: 799.99),
  Product(name: '4K OLED TV', price: 1299.99),
  Product(name: 'Gaming Laptop', price: 1299.99),
  Product(name: 'Convertible Laptop', price: 999.99),
  Product(name: 'Ultra-thin Laptop', price: 899.99),
  Product(name: 'Smartphone', price: 699.99),
  Product(name: 'Tablet', price: 399.99),
  Product(name: 'Smartwatch', price: 199.99),
  Product(name: 'Wireless Headphones', price: 149.99),
];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartPage()),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text('\$${product.price}'),
            trailing: ElevatedButton(
              onPressed: () {
                Provider.of<Cart>(context, listen: false).addToCart(product);
              },
              child: Text('Add to Cart'),
            ),
          );
        },
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: cart.items.isEmpty
          ? Center(
              child: Text('Cart is empty.'),
            )
          : ListView.builder(
              itemCount: cart.items.length,
              itemBuilder: (context, index) {
                final item = cart.items[index];
                return ListTile(
                  title: Text(item.name),
                  subtitle: Text('\$${item.price}'),
                  trailing: IconButton(
                    icon: Icon(Icons.remove_circle),
                    onPressed: () {
                      Provider.of<Cart>(context, listen: false)
                          .removeFromCart(item);
                    },
                  ),
                );
              },
            ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Total: \$${cart.totalPrice().toStringAsFixed(2)}',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
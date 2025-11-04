import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Product {
  String name;
  double price;
  int quantity;

  Product({required this.name, required this.price, required this.quantity});
}

class MyApp extends StatelessWidget {
      MyApp({super.key});

  final List<Product> productlist = [
    Product(name: "Flutter", price: 500, quantity: 2),
    Product(name: "Operating System", price: 400, quantity: 1),
    Product(name: "Oops", price: 500, quantity: 2),
    Product(name: "Artifical Intelligence", price: 500, quantity: 2),
    Product(name: "Maths", price: 1000, quantity: 1),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dynamic ListView",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dynamic ListView'),
          backgroundColor: const Color.fromARGB(255, 243, 213, 223),
        ),
        body: ListView.builder(
          itemCount: productlist.length,
          itemBuilder: (context, index) {
            final product = productlist[index];
            return Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    child: Text(product.name[0]),
                  ),
                  title: Text(product.name),
                  subtitle: Text('Price: ₹${product.price}, Qty: ${product.quantity}'),
                  trailing: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text('Product Order Form'),
                          content: Text("${product.name} order is placed!!"),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: Text('OK'),
                            ),
                          ],
                        ),
                      );
                    },
                    child: Text('Order More'),
                  ),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("${product.name} is selected"),
                        duration: Duration(seconds: 2),
                      ),
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
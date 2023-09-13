import 'package:flutter/material.dart';
import 'package:my_first_app/Screens/consumer_cart_screen.dart';
import 'package:my_first_app/providers/selector_cart_provider.dart';
import 'package:provider/provider.dart';

class ConsumerProductScreen extends StatefulWidget {
  const ConsumerProductScreen({super.key});

  @override
  State<ConsumerProductScreen> createState() => _ConsumerProductScreenState();
}

class _ConsumerProductScreenState extends State<ConsumerProductScreen> {
  late CartProvider provider;

  @override
  void initState() {
    super.initState();
    provider = Provider.of<CartProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Products',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ConsumerCartScreen(),
                ),
              );
            },
            icon: const Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: Consumer<CartProvider>(
        builder: (context, products, child) {
          return GridView.builder(
            padding: const EdgeInsets.all(5),
            itemCount: products.products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 7,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemBuilder: (context, index) => GridTile(
              child: Container(
                color: Colors.black12,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      products.products[index].image,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      products.products[index].name,
                      style: const TextStyle(fontSize: 20),
                    ),
                    Text(products.products[index].description),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Rs.${products.products[index].price.toString()}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Center(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          if (products.cartProducts
                              .contains(products.products[index])) {
                          } else {
                            provider.addToCart(products.products[index]);
                          }
                        },
                        icon: Icon(
                          products.cartProducts
                                  .contains(products.products[index])
                              ? Icons.done
                              : Icons.shopping_cart,
                        ),
                        label: Text(products.cartProducts
                                .contains(products.products[index])
                            ? 'Added'
                            : 'Add to cart'),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

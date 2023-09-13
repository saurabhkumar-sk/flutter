import 'package:flutter/material.dart';
import 'package:my_first_app/Screens/selector_cart_screen.dart';
import 'package:my_first_app/models/product_model.dart';
import 'package:my_first_app/providers/selector_cart_provider.dart';
import 'package:provider/provider.dart';

class SelectorProductScreen extends StatefulWidget {
  const SelectorProductScreen({super.key});

  @override
  State<SelectorProductScreen> createState() => _SelectorProductScreenState();
}

class _SelectorProductScreenState extends State<SelectorProductScreen> {
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
                  builder: (context) => const SelectorCartScreen(),
                ),
              );
            },
            icon: const Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: Selector<CartProvider, List<ProductModel>>(
        selector: (p0, p1) => p1.getProducts,
        builder: (context, products, child) {
          return GridView.builder(
            padding: const EdgeInsets.all(5),
            itemCount: products.length,
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
                      products[index].image,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      products[index].name,
                      style: const TextStyle(fontSize: 20),
                    ),
                    Text(products[index].description),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Rs.${products[index].price.toString()}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Center(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          if ((products[index].incart)) {
                          } else {
                            // provider.addToCart(products[index]);
                            provider.addCart(index);
                          }
                          setState(() {});
                        },
                        icon: Icon(
                          products[index].incart
                              ? Icons.done
                              : Icons.shopping_cart,
                        ),
                        label: Text(
                            products[index].incart ? 'Added' : 'Add to cart'),
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

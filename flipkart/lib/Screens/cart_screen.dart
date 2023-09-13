import 'package:flutter/material.dart';
import 'package:my_first_app/providers/cart_provider.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
            'Cart',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Consumer<CartProvider>(builder: (context, cart, child) {
        return cart.cartproducts.isEmpty
            ? const Center(
                child: Text('Your cart is empty'),
              )
            : ListView.builder(
                itemCount: cart.cartproducts.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Image.network(cart.cartproducts[index].image),
                    title: Text(cart.cartproducts[index].name),
                    subtitle: Text(cart.cartproducts[index].description),
                    trailing: IconButton(
                        onPressed: () {
                          provider.removeFromCart(index);
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.red,
                        )),
                  );
                },
              );
      }),
    );
  }
}

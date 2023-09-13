import 'package:flutter/material.dart';
import 'package:my_first_app/providers/selector_cart_provider.dart';
import 'package:provider/provider.dart';

class ConsumerCartScreen extends StatefulWidget {
  const ConsumerCartScreen({super.key});

  @override
  State<ConsumerCartScreen> createState() =>_ConsumerCartScreenState();
}

class _ConsumerCartScreenState extends State<ConsumerCartScreen> {
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
        return cart.cartProducts.isEmpty
            ? const Center(
                child: Text('Your cart is empty'),
              )
            : ListView.builder(
                itemCount: cart.cartProducts.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Image.network(cart.cartProducts[index].image),
                    title: Text(cart.cartProducts[index].name),
                    subtitle: Text(cart.cartProducts[index].description),
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

import 'package:flutter/material.dart';
import 'package:my_first_app/providers/selector_cart_provider.dart';
import 'package:provider/provider.dart';

class SelectorCartScreen extends StatefulWidget {
  const SelectorCartScreen({super.key});

  @override
  State<SelectorCartScreen> createState() => _SelectorCartScreenState();
}

class _SelectorCartScreenState extends State<SelectorCartScreen> {
  late CartProvider provider;

  @override
  void initState() {
    super.initState();
    provider = Provider.of<CartProvider>(context, listen: false);
  }

  @override
  Widget build(BuildContext context) {
    final cartProducts =
        context.select((CartProvider value) => value.cartProducts);

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Cart',
            
            style: TextStyle(color: Colors.white),
          ),
        ),centerTitle: true,
      ),
      body: cartProducts.isEmpty
          ? const Center(
              child: Text('Your cart is empty'), 
            )
          : ListView.builder(
              itemCount: cartProducts.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Image.network(cartProducts[index].image),
                  title: Text(cartProducts[index].name),
                  subtitle: Text(cartProducts[index].description),
                  trailing: IconButton(
                      onPressed: () {
                        provider.addCart(index);
                      },
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      )),
                );
              },
            ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:my_first_app/models/product_model.dart';

class CartProvider extends ChangeNotifier {
  List<ProductModel> products = List.generate(
    20,
    (index) => ProductModel(
      name: 'Product ${index + 1}',
      price: 101 + index,
      image: 'https://picsum.photos/id/${index + 5}/200/300',
      description: 'This is new product for your ease.',
      incart: false,
    ),
  );

  List<ProductModel> cartproducts = [];

  void addToCart(ProductModel product) {
    cartproducts.add(product);
    notifyListeners();
  }
  
  void removeFromCart(int index) {
    cartproducts.removeAt(index);
    notifyListeners();
  }
}

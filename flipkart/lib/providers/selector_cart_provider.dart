import 'package:flutter/material.dart';
import 'package:my_first_app/models/product_model.dart';

class CartProvider extends ChangeNotifier {
  final products = List.generate(
    20,
    (index) => ProductModel(
      name: 'Product ${index + 1}',
      price: 101 + index,
      image: 'https://picsum.photos/id/${index + 5}/200/300',
      description: 'This is new product for your ease.',
      incart: false,
    ),
  );

//used in Provider Package
  // List<ProductModel> cartProducts = [];

  List<ProductModel> get getProducts => products;

  //for Selector package
  List<ProductModel> get cartProducts =>
      products.where((element) => element.incart).toList();

  void addToCart(ProductModel product) {
    cartProducts.add(product);
    notifyListeners();
  }

  void removeFromCart(int index) {
    cartProducts.removeAt(index);
    notifyListeners();
  }

  void addCart(int index) {
    products[index].incart = !products[index].incart;
    notifyListeners();
  }
}

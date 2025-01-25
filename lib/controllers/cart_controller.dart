import 'package:food_delivery_app/data/repository/cart_repo.dart';
import 'package:food_delivery_app/models/cart_model.dart';
import 'package:food_delivery_app/models/products_model.dart';
import 'package:get/get.dart';

class CartController extends GetxService {
  final CartRepo cartRepo;

  CartController({required this.cartRepo});

  final Map<String, CartModel> _items = {};

  void addItem(ProductModel product, int quantity) {
    // Add item to cart
    _items.putIfAbsent(
      product.id.toString(),
      () => CartModel(
        id: product.id,
        name: product.name,
        price: product.price,
        img: product.img,
        quantity: quantity,
        isExist: true,
        time: DateTime.now().toString(),
      ),
    );
  }
}

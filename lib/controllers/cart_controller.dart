import 'package:flutter/material.dart';
import 'package:food_delivery_app/data/repository/cart_repo.dart';
import 'package:food_delivery_app/models/cart_model.dart';
import 'package:food_delivery_app/models/products_model.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:get/get.dart';

class CartController extends GetxService {
  final CartRepo cartRepo;

  CartController({required this.cartRepo});

  final Map<String, CartModel> _items = {};
  Map<String, CartModel> get items => _items;

  void addItem(ProductModel product, int quantity) {
    var totalQuantity = 0;
    // Add item to cart
    if (_items.containsKey(product.id.toString())) {
      _items.update(product.id.toString(), (value) {
        totalQuantity = value.quantity! + quantity;
        return CartModel(
          id: value.id,
          name: value.name,
          price: value.price,
          img: value.img,
          quantity: value.quantity! + quantity,
          isExist: true,
          time: DateTime.now().toString(),
        );
      });
      if (totalQuantity <= 0) {
        _items.remove(product.id.toString());
      }
    } else {
      if (quantity > 0) {
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
      } else {
        Get.snackbar(
          "Item count",
          "Please add item count",
          backgroundColor: AppColors.mainColor,
          colorText: Colors.white,
        );
      }
    }
  }

  existIncart(ProductModel product) {
    if (_items.containsKey(product.id.toString())) {
      return true;
    } else {
      return false;
    }
  }

  int getQuantity(ProductModel product) {
    var quantity = 0;
    if (_items.containsKey(product.id.toString())) {
      _items.forEach((key, value) {
        if (key == product.id.toString()) {
          quantity = value.quantity!;
        }
      });
    }
    return quantity;
  }
}

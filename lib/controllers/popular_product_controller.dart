import 'package:flutter/material.dart';
import 'package:food_delivery_app/controllers/cart_controller.dart';
import 'package:food_delivery_app/data/repository/popular_product_repo.dart';
import 'package:food_delivery_app/models/products_model.dart';
import 'package:food_delivery_app/utils/colors.dart';
import 'package:get/get.dart';

class PopularProductController extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProductController({required this.popularProductRepo});

  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;
  late CartController _cart;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  int _quantity = 0;
  int get quantity => _quantity;

  int _itemCart = 0;
  int get itemCart => _itemCart + _quantity;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      print("got products");
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      // print(_popularProductList);
      _isLoading = true;
      update();
    } else {}
  }

  void setQuantity(bool isIncrement) {
    if (isIncrement) {
      _quantity = checkQuantity(_quantity + 1);
    } else {
      _quantity = checkQuantity(_quantity - 1);
    }
    update();
  }

  int checkQuantity(int quantity) {
    if ((_itemCart + quantity) < 0) {
      print(quantity);
      Get.snackbar(
        "Item count",
        "Item count can't be less than 0",
        backgroundColor: AppColors.mainColor,
        colorText: Colors.white,
      );
      return 0;
    } else if ((_itemCart + quantity) > 20) {
      Get.snackbar(
        "Item count",
        "Item count can't be add more!",
        backgroundColor: AppColors.mainColor,
        colorText: Colors.white,
      );
      return 20;
    } else {
      return quantity;
    }
  }

  void initProduct(ProductModel product, CartController cart) {
    _quantity = 0;
    _itemCart = 0;
    _cart = cart;
    var exist = false;
    exist = _cart.existIncart(product);
    print("exist or not $exist");
    if (exist) {
      //_quantity = _cart.getQuantity(product);
      _itemCart = _cart.getQuantity(product);
    }
    print("the quantity is $_itemCart");
  }

  void addItem(
    ProductModel product,
  ) {
    // if (_quantity > 0) {
    _cart.addItem(product, quantity);
    _quantity = 0;
    _itemCart = _cart.getQuantity(product);
    // _cart.items.forEach((key, value) {
    //  print("the id id${product.id}the quantity is${value.quantity}");
    // });
    // } else {
    //   Get.snackbar(
    //     "Item count",
    //     "Please add item count",
    //     backgroundColor: AppColors.mainColor,
    //     colorText: Colors.white,
    //   );
    // }
    update();
  }
}

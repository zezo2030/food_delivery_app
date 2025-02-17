
import 'package:food_delivery_app/data/repository/popular_product_repo.dart';
import 'package:food_delivery_app/data/repository/recommeded_product_repo.dart';
import 'package:food_delivery_app/models/products_model.dart';
import 'package:get/get.dart';

class RecommendedProductController extends GetxController {
  final RecommendedProductRepo recommendedProductRepo;
  RecommendedProductController({required this.recommendedProductRepo});

  List<dynamic> _recommendedProductList = [];
  List<dynamic> get recommendedProductList => _recommendedProductList;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> getRecommendedProductList() async {
    Response response = await recommendedProductRepo.getRecommendedProductList();
    if (response.statusCode == 200) {
      print("got products");
      _recommendedProductList = [];
      _recommendedProductList.addAll(Product.fromJson(response.body).products);
      // print(_popularProductList);
      _isLoading = true;
      update();
    } else {}
  }
}

import 'package:food_delivery_app/pages/food/popular_food_detail.dart';
import 'package:food_delivery_app/pages/food/recommended_food_details.dart';
import 'package:food_delivery_app/pages/home/main_food_page.dart';
import 'package:get/get.dart';

class RoutesHelper {
  static const String initial = '/';
  static const String popularFoodDetails = '/popularFoodDetails';
  static const String recommendedFoodDetails = '/recommendedFoodDetails';

  static String getInitial() => '$initial';
  static String getPopularFoodDetails(int pageId) =>
      '$popularFoodDetails?pageId=$pageId';
  static String getRecommendedFoodDetails(int pageId) =>
      '$recommendedFoodDetails?pageId=$pageId';

  static List<GetPage> routes = [
    GetPage(
      name: initial,
      page: () => MainFoodPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: popularFoodDetails,
      page: () {
        var pageId = Get.parameters['pageId'];
        return PopularFoodDetails(pageId: int.parse(pageId!));
      },
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: recommendedFoodDetails,
      page: () {
        var pageId = Get.parameters['pageId'];
        return RecommendedFoodDetails( pageId: int.parse(pageId!));
      },
      transition: Transition.fadeIn,
    ),
  ];
}

import 'package:get/get.dart';

import '../modules/category_page/bindings/category_page_binding.dart';
import '../modules/category_page/views/category_page_view.dart';
import '../modules/place_profile/bindings/place_profile_binding.dart';
import '../modules/place_profile/views/place_profile_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.PLACE_PROFILE;

  static final routes = [
    GetPage(
      name: _Paths.CATEGORY_PAGE,
      page: () => const CategoryPageView(),
      binding: CategoryPageBinding(),
    ),
    GetPage(
      name: _Paths.PLACE_PROFILE,
      page: () => const PlaceProfileView(),
      binding: PlaceProfileBinding(),
    ),
  ];
}

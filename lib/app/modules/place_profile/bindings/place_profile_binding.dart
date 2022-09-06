import 'package:get/get.dart';

import '../controllers/place_profile_controller.dart';

class PlaceProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlaceProfileController>(
      () => PlaceProfileController(),
    );
  }
}

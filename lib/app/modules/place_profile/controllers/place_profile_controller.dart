import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:get/get.dart';
import 'package:travelling_kit_ui/app/modules/category_page/views/place_to_be_visited_model.dart';

class PlaceProfileController extends GetxController {
  late MapController mapController;
  var rightPadding = 0.0;
  late Place place;
  @override
  void onInit() {
    super.onInit();
    mapController = MapController(
      initMapWithUserPosition: false,
      initPosition: GeoPoint(latitude: 47.4358055, longitude: 8.4737324),
      areaLimit: BoundingBox(
        east: 10.4922941,
        north: 47.8084648,
        south: 45.817995,
        west: 5.9559113,
      ),
    );
    rightPadding = 70;
    place = Get.arguments;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    mapController.dispose();
  }

  icrementpadding() => rightPadding + 5;
}

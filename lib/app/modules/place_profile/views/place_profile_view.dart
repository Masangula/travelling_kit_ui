import 'package:flutter/material.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

import 'package:get/get.dart';
import 'package:travelling_kit_ui/app/colors/application_colors.dart';
import 'package:travelling_kit_ui/app/modules/place_profile/views/service_model.dart';
import 'package:travelling_kit_ui/app/modules/place_profile/views/user_review.dart';

import '../controllers/place_profile_controller.dart';

class PlaceProfileView extends GetView<PlaceProfileController> {
  const PlaceProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title:  Text(controller.place.name),
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.favorite,
              color: Get.theme.colorScheme.secondary,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildSizedBox(30),
              buildProfileCoverImageAndDetails(),
              buildSizedBox(30),
              buildHeadlines('What’s Included?'),
              buildSizedBox(24),
              SizedBox(
                height: 56,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Service.serviceList.length,
                  itemBuilder: (context, index) {
                    Service service = Service.serviceList[index];
                    return buildOfforedServiceItem(
                      service.serviceName,
                      service.iconData,
                    );
                  },
                ),
              ),
              buildSizedBox(30),
              buildHeadlines('About Trip'),
              buildSizedBox(24),
              Text(
                """"Bali is an island in Indonesia known for its verdant volcanoes, unique rice terraces, beaches, and beautiful coral reefs. Before becoming a tourist attraction, Kuta was a trading port where local products were traded to buyers from outside Bali. 

See beautiful Bali and help us keep it that way by joining this EcoTour of a Bali village. All proceeds from the EcoTour are donated to the Tangkas Village Recycling Center. Expert Friendly Service""",
                style: Get.theme.textTheme.bodyText2,
              ),
              buildSizedBox(30),
              buildHeadlines('Gallery Photo'),
              buildSizedBox(24),
              buildGalleryListView(),
              buildSizedBox(30),
              buildHeadlines('Location'),
              buildSizedBox(24),
              buildMapView(),
              buildSizedBox(30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildHeadlines('Review (99)'),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: ApplicationColors.orangePrimaryColor,
                        size: 25,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      buildHeadlines('4.8'),
                    ],
                  ),
                ],
              ),
              buildSizedBox(24),
              buildUserReviewListView(),
            ],
          ),
        ),
      ),
    );
  }

  Container buildMapView() {
    return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              height: 160,
              width: Get.width * 0.9,
              child: OSMFlutter(
                controller: controller.mapController,
                trackMyPosition: false,
                initZoom: 12,
                minZoomLevel: 8,
                maxZoomLevel: 14,
                stepZoom: 1.0,
                userLocationMarker: UserLocationMaker(
                  personMarker: const MarkerIcon(
                    icon: Icon(
                      Icons.location_history_rounded,
                      color: ApplicationColors.redSecondaryColor,
                      size: 48,
                    ),
                  ),
                  directionArrowMarker: const MarkerIcon(
                    icon: Icon(
                      Icons.double_arrow,
                      size: 48,
                    ),
                  ),
                ),
                roadConfiguration: RoadConfiguration(
                  startIcon: const MarkerIcon(
                    icon: Icon(
                      Icons.person,
                      size: 64,
                      color: Colors.brown,
                    ),
                  ),
                  roadColor: Colors.yellowAccent,
                ),
                markerOption: MarkerOption(
                    defaultMarker: const MarkerIcon(
                  icon: Icon(
                    Icons.person_pin_circle,
                    color: Colors.blue,
                    size: 56,
                  ),
                )),
              ),
            );
  }

  SizedBox buildProfileCoverImageAndDetails() {
    return SizedBox(
              height: Get.height * 0.4,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      controller.place.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color:
                          ApplicationColors.blackWordsColor.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Positioned(
                    top: 24,
                    right: 24,
                    left: 24,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.arrow_upward,
                            size: 30,
                            color: ApplicationColors.whiteBackgroundColor,
                          ),
                        ),
                        IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.verified,
                            color: ApplicationColors.orangePrimaryColor,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 24,
                    bottom: 24,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          controller.place.name,
                          style: Get.theme.textTheme.headline2!.copyWith(
                              color: ApplicationColors.whiteBackgroundColor),
                        ),
                        buildSizedBox(5),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: ApplicationColors.whiteBackgroundColor,
                              size: 20,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Bali, Indonesia',
                              style: Get.theme.textTheme.caption!.copyWith(
                                fontSize: 16,
                                color: ApplicationColors.whiteBackgroundColor,
                              ),
                            ),
                          ],
                        ),
                        buildSizedBox(5),
                        Row(
                          children: [
                            Text(
                              '100+',
                              style: Get.theme.textTheme.bodyText1!.copyWith(
                                color: ApplicationColors.whiteBackgroundColor,
                              ),
                            ),
                            Text(
                              ' people have explored',
                              style: Get.theme.textTheme.caption!.copyWith(
                                color: ApplicationColors.whiteBackgroundColor,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            buildTotalStarRating(),
                            Text(
                              '4,9',
                              style: Get.theme.textTheme.bodyText1!.copyWith(
                                color: ApplicationColors.whiteBackgroundColor,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
  }

  SizedBox buildUserReviewListView() {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        itemCount: UserReview.userReviews.length,
        itemBuilder: ((context, index) => Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: buildUserReviewItem(
                  UserReview.userReviews[index].userName,
                  UserReview.userReviews[index].imageUrl,
                  UserReview.userReviews[index].reviewText),
            )),
      ),
    );
  }

  SizedBox buildUserReviewItem(
    String userName,
    String imageUrl,
    String reviewText,
  ) {
    return SizedBox(
      height: 110,
      width: Get.width * 0.8,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          CircleAvatar(
            radius: 20,
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    userName,
                    style: Get.theme.textTheme.headline6,
                  ),
                  Text(
                    'Today',
                    style: Get.theme.textTheme.caption,
                  ),
                ],
              ),
              buildSizedBox(5),
              buildTotalStarRating(),
              buildSizedBox(8),
              SizedBox(
                width: Get.width * 0.6,
                child: Text(
                  reviewText,
                  softWrap: true,
                  textAlign: TextAlign.justify,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: Get.theme.textTheme.caption!.copyWith(
                    color: Get.theme.colorScheme.onSurface,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Row buildTotalStarRating() {
    return Row(
      children: [
        buildRatingStar(),
        buildRatingStar(),
        buildRatingStar(),
        buildRatingStar(),
        buildRatingStar()
      ],
    );
  }

  Padding buildRatingStar() {
    return const Padding(
      padding: EdgeInsets.only(right: 4.0),
      child: Icon(
        Icons.star,
        color: ApplicationColors.orangePrimaryColor,
        size: 18,
      ),
    );
  }

  SizedBox buildSizedBox(double height) {
    return SizedBox(
      height: height,
    );
  }

  SizedBox buildGalleryListView() {
    return SizedBox(
      height: 94,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return index != 2
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: SizedBox(
                      width: 92,
                      height: 92,
                      child: Image.asset(
                        Service.listOfPics[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: SizedBox(
                      width: 92,
                      height: 92,
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(Service.listOfPics[index]),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: ApplicationColors.blackWordsColor
                                  .withOpacity(0.3),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              '+20',
                              style: Get.theme.textTheme.headline2!.copyWith(
                                color: ApplicationColors.whiteBackgroundColor,
                              ),
                            ),
                          ),
                        ],
                      )),
                );
        },
      ),
    );
  }

  Text buildHeadlines(String headline) {
    return Text(
      headline,
      style: Get.theme.textTheme.headline2,
    );
  }

  Padding buildOfforedServiceItem(String categotyName, IconData iconData) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Container(
        height: 54,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: ApplicationColors.selectedCategoryColor,
            width: 1,
          ),
        ),
        padding: const EdgeInsets.all(2),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                color: ApplicationColors.textfieldBackgroundColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: SizedBox(
                height: 24,
                width: 24,
                child: Icon(
                  iconData,
                  color: ApplicationColors.redSecondaryColor,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              categotyName,
              style: Get.theme.textTheme.button,
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
      ),
    );
  }
}

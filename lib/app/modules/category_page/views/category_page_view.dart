import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:travelling_kit_ui/app/colors/application_colors.dart';
import 'package:travelling_kit_ui/app/modules/category_page/views/category_model.dart';
import 'package:travelling_kit_ui/app/modules/category_page/views/place_to_be_visited_model.dart';

import '../controllers/category_page_controller.dart';

class CategoryPageView extends GetView<CategoryPageController> {
  const CategoryPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('Category'),
        actions: const [
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.tune,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextField(
                style: Get.theme.textTheme.caption,
                decoration: InputDecoration(
                  fillColor: ApplicationColors.textfieldBackgroundColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  hintText: 'Search destination',
                  hintStyle: Get.theme.textTheme.caption!.copyWith(fontSize: 16),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Get.theme.colorScheme.onSurface,
                    size: 24,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: SizedBox(
                height: 56,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Category.categoriesList.length,
                  itemBuilder: (context, index) {
                    Category category = Category.categoriesList[index];
                    return buildCategoryItem(
                      category.categoryName,
                      category.imageUrl,
                    );
                  },
                ),
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: Place.listOfPlaceToBeVisited.length,
                    itemBuilder: (context, index) {
                      Place place = Place.listOfPlaceToBeVisited[index];
                      return buildVisitingPlaceIListItem(
                          place.name, place.description, place.imageUrl);
                    }))
          ],
        ),
      ),
    );
  }

  Padding buildVisitingPlaceIListItem(
      String name, String description, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 10,
      ),
      child: Container(
        height: 155,
        width: Get.width*0.9,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: ApplicationColors.greyWordsColor,
            width: 1,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 14,
            ),
            Container(
              alignment: Alignment.centerLeft,
              width: Get.width * 0.53,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: Get.width * 0.26,
                        alignment: Alignment.center,
                        child: Text(
                          name,
                          textAlign: TextAlign.left,
                          style: Get.theme.textTheme.button,
                          softWrap: true,
                        ),
                      ),
                      const IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.favorite_border_outlined,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '\$245,00',
                    style: Get.theme.textTheme.headline1,
                  ),
                  Row(
                    children: [
                      buildRatingStar(ApplicationColors.orangePrimaryColor),
                      buildRatingStar(ApplicationColors.orangePrimaryColor),
                      buildRatingStar(ApplicationColors.orangePrimaryColor),
                      buildRatingStar(ApplicationColors.orangePrimaryColor),
                      buildRatingStar(ApplicationColors.greyWordsColor),
                      Text(
                        '4.8',
                        style: Get.theme.textTheme.bodyText2,
                      ),
                    ],
                  ),
                  Text(
                    description,
                    style: Get.theme.textTheme.caption,
                    maxLines: 2,
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding buildRatingStar(Color color) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0),
      child: Icon(
        Icons.star,
        color: color,
        size: 12,
      ),
    );
  }

  Padding buildCategoryItem(String categotyName, String imageUrl) {
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
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
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

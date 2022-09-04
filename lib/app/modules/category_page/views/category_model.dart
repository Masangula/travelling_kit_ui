class Category {
  final String categoryName;
  final String imageUrl;

  const Category({required this.categoryName, required this.imageUrl});

  static const categoriesList = [
    Category(categoryName: 'Beach', imageUrl: 'assets/images/palm_tree_icon.png'),
    Category(categoryName: 'Mountain', imageUrl: 'assets/images/mountain_icon.png'),
    Category(categoryName: 'Camping', imageUrl: 'assets/images/forest_tree_icon.png'),
  ];
}

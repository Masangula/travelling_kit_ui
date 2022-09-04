class Place {
  final String name;
  final String description;
  final String imageUrl;

  const Place(
      {required this.name, required this.description, required this.imageUrl});

  static const listOfPlaceToBeVisited = [
    Place(
      name: 'Kuta Beach',
      description:
          """Bali is an island in Indonesia known for its verdant volcano...""",
      imageUrl: 'assets/images/kuta_beach.png',
    ),
    Place(
      name: 'Kuta resort',
      description:
          """A resort is a place used for vacation, relaxation or as a day...""",
      imageUrl: 'assets/images/kuta_resort.png',
    ),
    Place(
      name: 'Mandalika Beach',
      description:
          """A resort is a place used for vacation, relaxation or as a day...""",
      imageUrl: 'assets/images/mandalika_beach.png',
    ),Place(
      name: 'Jimbaran Beach',
      description:
          """A resort is a place used for vacation, relaxation or as a day...""",
      imageUrl: 'assets/images/jimbran_beach.png',
    ),
  ];
}

import 'package:flutter/Material.dart';

class Service {
  final String serviceName;
  final IconData iconData;

  const Service({required this.serviceName, required this.iconData});

  static const serviceList = [
    Service(serviceName: 'Flight', iconData: Icons.flight_outlined),
    Service(serviceName: 'Hotel', iconData: Icons.apartment_rounded),
    Service(
        serviceName: 'Transportation',
        iconData: Icons.emoji_transportation_outlined),
  ];

  static const listOfPics = [
    'assets/images/kuta_beach_1.png',
    'assets/images/kuta_beach_2.png',
    'assets/images/kuta_beach_3.png',
  ];
}

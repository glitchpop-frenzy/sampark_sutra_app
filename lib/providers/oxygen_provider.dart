import 'package:flutter/material.dart';

import '../models/oxygen.dart';

class OxygenProvider extends ChangeNotifier {
  List<Oxygen> _oxygenProviderList = [
    Oxygen(
      description: 'Test 1',
      duration: Duration(hours: 24),
      infoby: 'ID1',
      location: 'Jaipur',
      numOfCylinders: 5,
      provider: 'Om Prakash',
      quantityPerCylinder: 22,
    ),
  ];

  List<Oxygen> get oxygenProviderList {
    return [..._oxygenProviderList];
  }
}

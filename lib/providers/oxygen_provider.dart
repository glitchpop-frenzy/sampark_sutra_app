import 'package:flutter/material.dart';

import '../models/oxygen.dart';

class OxygenProvider extends ChangeNotifier {
  List<Oxygen> _oxygenProviderList = [
    Oxygen(
      description: 'Gurudas Gas Distribution centre',
      duration: Duration(hours: 24),
      reportedTime: Duration(hours: 24),
      infoby: 'ID1',
      location: 'Jaipur',
      numOfCylinders: 5,
      provider: 'Om Prakash',
      contact: '94256734281',
    ),
    Oxygen(
      description: 'Test 2',
      duration: Duration(hours: 24),
      reportedTime: Duration(hours: 24),
      infoby: 'ID2',
      location: 'Jabalpur',
      numOfCylinders: 5,
      provider: 'Harsh Prakash',
      contact: '94256734281',
    ),
    Oxygen(
      description: 'Test 1',
      duration: Duration(hours: 24),
      reportedTime: Duration(hours: 24),
      infoby: 'ID1',
      location: 'Jaipur',
      numOfCylinders: 5,
      provider: 'Om Prakash',
      contact: '94256734281',
    ),
    Oxygen(
      description: 'Test 1',
      duration: Duration(hours: 24),
      reportedTime: Duration(hours: 24),
      infoby: 'ID1',
      location: 'Jaipur',
      numOfCylinders: 5,
      provider: 'Om Prakash',
      contact: '94256734281',
    ),
  ];

  List<Oxygen> get oxygenProviderList {
    return [..._oxygenProviderList];
  }
}

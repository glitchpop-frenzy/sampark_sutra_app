import 'package:flutter/material.dart';

import '../models/beds.dart';

class BedProvider extends ChangeNotifier {
  List<Bed> _bedProviderList = [
    Bed(
      hospitalName: 'Apollo Hospital',
      duration: Duration(hours: 24),
      reportedTime: Duration(hours: 10),
      infoby: 'ID1',
      location: 'Jaipur',
      numOfBeds: 10,
      contact: '94256734281',
    ),
    Bed(
      hospitalName: 'Apollo Hospital',
      duration: Duration(hours: 24),
      reportedTime: Duration(hours: 10),
      infoby: 'ID1',
      location: 'Jaipur',
      numOfBeds: 10,
      contact: '94256734281',
    ),
    Bed(
      hospitalName: 'Apollo Hospital',
      duration: Duration(hours: 24),
      reportedTime: Duration(hours: 10),
      infoby: 'ID1',
      location: 'Jaipur',
      numOfBeds: 10,
      contact: '94256734281',
    ),
    Bed(
      hospitalName: 'Apollo Hospital',
      duration: Duration(hours: 24),
      reportedTime: Duration(hours: 10),
      infoby: 'ID1',
      location: 'Jaipur',
      numOfBeds: 10,
      contact: '94256734281',
    ),
  ];

  List<Bed> get bedProviderList {
    return [..._bedProviderList];
  }
}

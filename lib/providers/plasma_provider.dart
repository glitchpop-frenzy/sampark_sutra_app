import 'package:flutter/material.dart';

import '../models/plasma_donor.dart';

class DonorProvider extends ChangeNotifier {
  List<Donor> _donorProviderList = [
    Donor(
      donorName: 'Saksham Gupta',
      duration: Duration(hours: 24),
      reportedTime: Duration(hours: 2),
      infoby: 'ID1',
      location: 'Jaipur',
      contact: '94256734281',
      bloodGroup: 'A+',
    ),
    Donor(
      donorName: 'Saksham Gupta',
      duration: Duration(hours: 24),
      reportedTime: Duration(hours: 2),
      infoby: 'ID1',
      location: 'Jaipur',
      contact: '94256734281',
      bloodGroup: 'A+',
    ),
    Donor(
      donorName: 'Saksham Gupta',
      duration: Duration(hours: 24),
      reportedTime: Duration(hours: 2),
      infoby: 'ID1',
      location: 'Jaipur',
      contact: '94256734281',
      bloodGroup: 'A+',
    ),
    Donor(
      donorName: 'Saksham Gupta',
      duration: Duration(hours: 24),
      reportedTime: Duration(hours: 2),
      infoby: 'ID1',
      location: 'Jaipur',
      contact: '94256734281',
      bloodGroup: 'A+',
    ),
  ];

  List<Donor> get donorProviderList {
    return [..._donorProviderList];
  }
}

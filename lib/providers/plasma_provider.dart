import 'package:flutter/material.dart';

import '../models/plasma_donor.dart';

class DonorProvider extends ChangeNotifier {
  List<Donor> _donorProviderList = [
    Donor(
      donorName: 'Saksham Gupta',
      duration: Duration(hours: 24),
      reportedTime: Duration(hours: 2),
      infoby: 'Sima Nigam',
      location: 'Jaipur',
      contact: '94256734281',
      bloodGroup: 'A+',
    ),
    Donor(
      donorName: 'Vinay Luthra',
      duration: Duration(hours: 24),
      reportedTime: Duration(hours: 2),
      infoby: 'Mukta Pal',
      location: 'Jaipur',
      contact: '94256734281',
      bloodGroup: 'A+',
    ),
    Donor(
      donorName: 'Pratap Patel',
      duration: Duration(hours: 24),
      reportedTime: Duration(hours: 2),
      infoby: 'Indra Borah',
      location: 'Jaipur',
      contact: '94256734281',
      bloodGroup: 'A+',
    ),
    Donor(
      donorName: 'Devina Oommen',
      duration: Duration(hours: 24),
      reportedTime: Duration(hours: 2),
      infoby: 'Ritika Saha',
      location: 'Jaipur',
      contact: '94256734281',
      bloodGroup: 'A+',
    ),
    Donor(
      donorName: 'Reyansh Deshpande',
      duration: Duration(hours: 24),
      reportedTime: Duration(hours: 2),
      infoby: 'Naisha Pillai',
      location: 'Jaipur',
      contact: '94256734281',
      bloodGroup: 'A+',
    ),
    Donor(
      donorName: 'Devina Oommen',
      duration: Duration(hours: 24),
      reportedTime: Duration(hours: 2),
      infoby: 'Ritika Saha',
      location: 'Jaipur',
      contact: '94256734281',
      bloodGroup: 'A+',
    ),
    Donor(
      donorName: 'Ayaan Gaba',
      duration: Duration(hours: 24),
      reportedTime: Duration(hours: 2),
      infoby: 'Rati Jani',
      location: 'Jaipur',
      contact: '94256734281',
      bloodGroup: 'A+',
    ),
    Donor(
      donorName: 'Om Agate',
      duration: Duration(hours: 24),
      reportedTime: Duration(hours: 2),
      infoby: 'Ritika Saha',
      location: 'Jaipur',
      contact: '94256734281',
      bloodGroup: 'A+',
    ),
  ];

  List<Donor> get donorProviderList {
    return [..._donorProviderList];
  }
}

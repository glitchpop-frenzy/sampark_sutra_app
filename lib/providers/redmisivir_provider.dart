import 'package:flutter/material.dart';

import '../models/medicine.dart';

class MedicineProvider extends ChangeNotifier {
  List<Medicine> _medicineProviderList = [
    Medicine(
      duration: Duration(hours: 24),
      reportedTime: Duration(hours: 24),
      hospitalName: 'Apollo Hospital',
      infoby: 'Advay Apte',
      location: 'Jaipur',
      contact: '94256734281',
      meds: [
        'Remdisivir',
        'Fabiflu',
        'Covishield',
      ],
    ),
    Medicine(
      duration: Duration(hours: 24),
      reportedTime: Duration(hours: 24),
      hospitalName: 'Apollo Hospital',
      infoby: 'Vivaan Randhawa',
      location: 'Jaipur',
      contact: '94256734281',
      meds: [
        'Remdisivir',
        'Fabiflu',
        'Covishield',
      ],
    ),
    Medicine(
      duration: Duration(hours: 24),
      reportedTime: Duration(hours: 24),
      hospitalName: 'Apollo Hospital',
      infoby: 'Anjali Kapoor',
      location: 'Jaipur',
      contact: '94256734281',
      meds: [
        'Remdisivir',
        'Fabiflu',
        'Covishield',
      ],
    ),
    Medicine(
      duration: Duration(hours: 24),
      reportedTime: Duration(hours: 24),
      hospitalName: 'Apollo Hospital',
      infoby: 'Rahul Ganguly',
      location: 'Jaipur',
      contact: '94256734281',
      meds: [
        'Remdisivir',
        'Fabiflu',
        'Covishield',
      ],
    ),
    Medicine(
      duration: Duration(hours: 24),
      reportedTime: Duration(hours: 24),
      hospitalName: 'Apollo Hospital',
      infoby: 'Sarthak Konda',
      location: 'Jaipur',
      contact: '94256734281',
      meds: [
        'Remdisivir',
        'Fabiflu',
        'Covishield',
      ],
    ),
    Medicine(
      duration: Duration(hours: 24),
      reportedTime: Duration(hours: 24),
      hospitalName: 'Apollo Hospital',
      infoby: 'Nitya Dhaliwal',
      location: 'Jaipur',
      contact: '94256734281',
      meds: [
        'Remdisivir',
        'Fabiflu',
        'Covishield',
      ],
    ),
    Medicine(
      duration: Duration(hours: 24),
      reportedTime: Duration(hours: 24),
      hospitalName: 'Apollo Hospital',
      infoby: 'Dipti Raman',
      location: 'Jaipur',
      contact: '94256734281',
      meds: [
        'Remdisivir',
        'Fabiflu',
        'Covishield',
      ],
    ),
    Medicine(
      duration: Duration(hours: 24),
      reportedTime: Duration(hours: 24),
      hospitalName: 'Apollo Hospital',
      infoby: 'Khushi Sachar',
      location: 'Jaipur',
      contact: '94256734281',
      meds: [
        'Remdisivir',
        'Fabiflu',
        'Covishield',
      ],
    ),
  ];

  List<Medicine> get medicineProviderList {
    return [..._medicineProviderList];
  }
}

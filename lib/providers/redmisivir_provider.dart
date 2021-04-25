import 'package:flutter/material.dart';

import '../models/medicine.dart';

class MedicineProvider extends ChangeNotifier {
  List<Medicine> _medicineProviderList = [
    Medicine(
      duration: Duration(hours: 24),
      reportedTime: Duration(hours: 24),
      hospitalName: 'Apollo Hospital',
      infoby: 'ID1',
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
      infoby: 'ID1',
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
      infoby: 'ID1',
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
      infoby: 'ID1',
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

import 'dart:async';

import 'package:flutter/material.dart';

class Auth with ChangeNotifier {
  String? name;
  String? email;
  String? userid;
  String? token;
  DateTime? expiryDate;
  Timer? autoTimer;
  int? phone;
}

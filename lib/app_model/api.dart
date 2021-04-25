import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';

import '../models/http_exception.dart';

import 'package:http/http.dart' as http;

class Api with ChangeNotifier {
  String? ApiKey = 'AIzaSyB5G3EfUSUYpjCU2CyGNWdLC3xgD_rxRfY';

  String? token;
  String? _userid;
  DateTime? expiresIn;

  bool isAuth() {
    return token != '';
  }

  String get userid {
    return _userid!;
  }

  Future<void> _authentication(
      String email, String password, String link) async {
    try {
      print('email auth: $email');
      print('link auth: $link');
      final response = await http.post(
        Uri.parse(link),
        body: json.encode(
          {
            'email': email,
            'password': password,
            'returnSecureToken': true,
          },
        ),
      );
      final responseData = json.decode(response.body);
      print('responseData Provider: ${responseData['idToken']}');
      if (responseData['error'] == null) {
        expiresIn = DateTime.now()
            .add(Duration(seconds: int.parse(responseData['expiresIn'])));
        _userid = responseData['localId'];
        token = responseData['idToken'];

        notifyListeners();
      }
    } catch (e) {
      print(e);
    }
  }

  Future<String> signUp(String email, String password) async {
    String returnText = '';
    print('email: $email');
    print('password: $password');
    String link =
        'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=$ApiKey';
    try {
      final response = await http.post(
        Uri.parse(link),
        body: json.encode(
          {
            'email': email,
            'password': password,
            'returnSecureToken': true,
          },
        ),
      );
      print(response.body);
      final responseData = json.decode(response.body);
      if (responseData['error'] == null) {
        returnText = 'User Registration Successful!!';
      } else {
        returnText = 'User Registration Fails!!';
      }
      return returnText;
    } catch (e) {
      print('e: $e');
      return e.toString();
    }
  }

  Future<void> login(String email, String password) async {
    await _authentication(email, password,
        'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=$ApiKey');
  }
}

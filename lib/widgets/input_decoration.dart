import 'package:flutter/material.dart';

InputDecoration inputDec(String? label, String? hint) {
  return InputDecoration(
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: Color(0xFF0077b6),
        width: 1,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: Color(0xFFf94144),
        width: 1,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: Color(0xFFf94144),
        width: 1,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: Color(0xFF03045e),
        width: 1,
      ),
    ),
    labelText: label,
    hintText: hint,
    labelStyle: TextStyle(
      color: Color(0xFF003049),
      fontWeight: FontWeight.bold,
    ),
  );
}

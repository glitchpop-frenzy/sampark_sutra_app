import 'package:flutter/material.dart';

import '../widgets/auth_card.dart';

class AuthScreen extends StatelessWidget {
  static const routeName = '/auth-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFf4978e),
              Color(0xFFc1d3fe),
            ],
          ),
        ),
        alignment: Alignment.center,
        child: AuthCard(),
      ),
    );
  }
}

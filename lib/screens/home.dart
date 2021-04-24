import 'package:flutter/material.dart';

import '../widgets/category_card.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resources'),
      ),
      body: Container(
        color: Color(0xFFfae1dd),
        child: ListView(
          children: <Widget>[
            CategoryCard.categoryCard(
              context,
              'Oxygen',
              'assets/icons/lack-of-air.png',
            ),
            CategoryCard.categoryCard(
              context,
              'Plasma Donation',
              'assets/icons/plasma_donation.jpg',
            ),
            CategoryCard.categoryCard(
              context,
              'Beds',
              'assets/icons/hospital_bed.png',
            ),
            CategoryCard.categoryCard(
              context,
              'Remdesivir',
              'assets/icons/remdesivir.png',
            ),
          ],
        ),
      ),
    );
  }
}

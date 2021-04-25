import 'package:flutter/material.dart';

import '../screens/oxygen_list_screen.dart';
import '../screens/med_list_screen.dart';

import '../widgets/category_card.dart';
import 'auth_screen.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resources'),
        actions: [
          IconButton(
            icon: Icon(Icons.person_add),
            onPressed: () {
              Navigator.of(context).pushNamed(AuthScreen.routeName);
            },
          ),
        ],
      ),
      body: Container(
        color: Color(0xFFfae1dd),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.7,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: CategoryCard.categoryCard(
                    context,
                    'Oxygen',
                    OxygenListScreen.routeName,
                    'assets/icons/lack-of-air.png',
                  ),
                ),
                Expanded(
                  child: CategoryCard.categoryCard(
                    context,
                    'Plasma Donation',
                    OxygenListScreen.routeName,
                    'assets/icons/plasma_donation.jpg',
                  ),
                ),
                Expanded(
                  child: CategoryCard.categoryCard(
                    context,
                    'Beds',
                    OxygenListScreen.routeName,
                    'assets/icons/hospital_bed.png',
                  ),
                ),
                Expanded(
                  child: CategoryCard.categoryCard(
                    context,
                    'Remdesivir',
                    MedListScreen.routeName,
                    'assets/icons/remdesivir.png',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

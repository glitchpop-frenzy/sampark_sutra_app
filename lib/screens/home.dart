import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/oxygen_list_screen.dart';
import '../screens/med_list_screen.dart';
import '../screens/donor_screen.dart';
import '../screens/beds_screen.dart';

import '../widgets/category_card.dart';
import 'edit_profile_screen.dart';
import 'auth_screen.dart';
import '../app_model/api.dart';

class MyHomePage extends StatelessWidget {
  static const routeName = '/home';
  @override
  Widget build(BuildContext context) {
    bool _token = Provider.of<Api>(context).isAuth();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resources'),
        actions: [
          _token
              ? IconButton(
                  icon: Icon(Icons.login_rounded),
                  onPressed: () {
                    // print(api.isAuth());
                    Navigator.of(context)
                        .pushNamed(EditProfileScreen.routeName);
                  })
              : IconButton(
                  icon: Icon(Icons.person_add),
                  onPressed: () {
                    // print(api.isAuth());
                    Navigator.of(context).pushNamed(AuthScreen.routeName);
                  })
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
                    DonorScreen.routeName,
                    'assets/icons/plasma_donation.jpg',
                  ),
                ),
                Expanded(
                  child: CategoryCard.categoryCard(
                    context,
                    'Beds',
                    BedScreen.routeName,
                    'assets/icons/hospital_bed.png',
                  ),
                ),
                Expanded(
                    child: CategoryCard.categoryCard(
                  context,
                  'Remdesivir',
                  MedListScreen.routeName,
                  'assets/icons/remdesivir.png',
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

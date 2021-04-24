import 'package:flutter/material.dart';

import '../screens/oxygen_list_screen.dart';

class CategoryCard {
  String? category;
  String? icon;
  static Widget categoryCard(
      BuildContext context, String? category, String? icon) {
    return Card(
      elevation: 3,
      borderOnForeground: true,
      child: ListTile(
        onTap: () {
          Navigator.of(context).pushNamed(OxygenListScreen.routeName);
        },
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        leading: Image.asset(icon!),
        title: Text(
          category!,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}

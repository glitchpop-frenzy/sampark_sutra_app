import 'package:flutter/material.dart';

import '../screens/oxygen_list_screen.dart';

class CategoryCard {
  String? category;
  String? icon;
  String? route;
  static Widget categoryCard(
      BuildContext context, String? category, String route, String? icon) {
    return Card(
      elevation: 3,
      borderOnForeground: true,
      child: ListTile(
        onTap: () {
          print(route);
          Navigator.of(context).pushNamed(route);
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

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../providers/oxygen_provider.dart';

class OxygenListScreen extends StatefulWidget {
  static const routeName = 'oxygen-list-screen';
  @override
  _OxygenListScreenState createState() => _OxygenListScreenState();
}

class _OxygenListScreenState extends State<OxygenListScreen> {
  @override
  Widget build(BuildContext context) {
    final oxygenProviderList =
        Provider.of<OxygenProvider>(context).oxygenProviderList;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Oxygen Suppliers'),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (ctx, index) => Card(
            child: ElevatedButton(
              onPressed: () {},
              child: Text('This is a oxygen text'),
            ),
          ),
          itemCount: oxygenProviderList.length,
        ),
      ),
    );
  }
}

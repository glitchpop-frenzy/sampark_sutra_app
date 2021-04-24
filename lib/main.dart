import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/home.dart';
import './providers/oxygen_provider.dart';
import './screens/oxygen_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => OxygenProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Covid-19 Resources App',
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.green,
          fontFamily: 'Raleway',
          textTheme: TextTheme(
            headline6: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        home: MyHomePage(),
        routes: {
          OxygenListScreen.routeName: (ctx) => OxygenListScreen(),
        },
      ),
    );
  }
}

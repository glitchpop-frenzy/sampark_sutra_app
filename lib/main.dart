import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/home.dart';

import './providers/oxygen_provider.dart';
import './providers/redmisivir_provider.dart';

import './screens/oxygen_list_screen.dart';
import './screens/auth_screen.dart';
import './screens/med_list_screen.dart';

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
        ),
        ChangeNotifierProvider(
          create: (ctx) => MedicineProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Covid-19 Resources App',
        theme: ThemeData(
          accentColor: Color(0xFF003049),
          brightness: Brightness.light,
          primarySwatch: Colors.green,
          fontFamily: 'Raleway',
          textTheme: TextTheme(
            headline6: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          cardTheme: CardTheme(
            color: Color(0xFFd8e2dc),
            // margin: EdgeInsets.symmetric(
            //   horizontal: 5,
            //   vertical: 5,
            // ),
          ),
        ),
        home: MyHomePage(),
        routes: {
          OxygenListScreen.routeName: (ctx) => OxygenListScreen(),
          AuthScreen.routeName: (ctx) => AuthScreen(),
          MedListScreen.routeName: (context) => MedListScreen(),
        },
      ),
    );
  }
}

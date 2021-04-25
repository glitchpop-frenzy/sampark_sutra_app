import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/home.dart';
import './screens/edit_profile_screen.dart';
import './providers/oxygen_provider.dart';
import './screens/oxygen_list_screen.dart';
import './screens/auth_screen.dart';
import './app_model/api.dart';

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
        ChangeNotifierProvider.value(value: Api())
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
          ),
        ),
        home: MyHomePage(),
        routes: {
          MyHomePage.routeName: (ctx) => MyHomePage(),
          OxygenListScreen.routeName: (ctx) => OxygenListScreen(),
          AuthScreen.routeName: (ctx) => AuthScreen(),
          EditProfileScreen.routeName: (ctx) => EditProfileScreen(),
        },
      ),
    );
  }
}

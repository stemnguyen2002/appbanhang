/*import 'package:demoappst/categories_page.dart';
import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food app with navigation',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: CategoriesPage()

      ),
    );
  }
}
*/
import 'package:demoappst/src/resources/login_page.dart';
import 'package:flutter/material.dart';
import 'package:demoappst/constants.dart';

import 'package:demoappst/screens/home/home_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(),
     // HomeScreen(),
    );
  }
}

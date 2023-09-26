import 'package:flutter/material.dart';
import 'package:movie_app/provider/popular_provider.dart';
import 'package:movie_app/provider/upcoming_provider.dart';
import 'package:movie_app/screens/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(  MultiProvider(
    providers :[

      ChangeNotifierProvider(
      create: (context) {
        return PopularProvider();
      },
  ),

  ChangeNotifierProvider(
  create: (context) {
  return UpcomingProvider();
  },
  )

  ],
  child: const MyApp(),
  ),
  );
      }

class MyApp extends StatelessWidget {
  const MyApp

  ({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

          brightness: Brightness.dark
      ),
      home: HomePage(),
    );
  }
}
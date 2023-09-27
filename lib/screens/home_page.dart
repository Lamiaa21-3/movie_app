import 'package:flutter/material.dart';
import 'package:movie_app/models/popular_model.dart';
import 'package:movie_app/provider/topRated_provider.dart';
import 'package:movie_app/provider/upcoming_provider.dart';
import 'package:movie_app/screens/Top%20rated.dart';
import 'package:movie_app/screens/Upcoming.dart';
import 'package:movie_app/screens/popular.dart';
import 'package:movie_app/services/get_popular_services.dart';
import 'package:provider/provider.dart';

import '../provider/popular_provider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  void didChangeDependencies() {
    store();

    super.didChangeDependencies();
  }

  void store() {
    Provider.of<PopularProvider>(context).weatherData();
  }

  // void upStore ()
  // {
  //   Provider.of<UpcomingProvider>(context).upComingMethod();
  // }
  List screens = [
    PopularScreen(),
    UpcomingScreen(),
    TopRatedScreens(),
  ];

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery
        .of(context)
        .size;
    PopularModel? popularData;
    popularData = Provider.of<PopularProvider>(context).popularData;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("What to you want to watch ? "),
      ),
      body:
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(

              decoration: InputDecoration(
                suffixIcon: Icon(Icons.search),
                labelText: 'Search',
                hintText: 'enter your want',

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),

              ),
            ),
          ),
          screens[_selectedIndex],
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Popular',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Upcoming',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Top rated',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal,
        onTap: (index) async {
          if (_selectedIndex == 0) {
            Provider.of<PopularProvider>(context, listen: false).weatherData();
          } else if (_selectedIndex == 1) {
            Provider.of<UpcomingProvider>(context, listen: false)
                .upComingMethod();
          } else if(_selectedIndex ==2) {
            Provider.of<TopRatedProvider>(context,listen: false).topRatedMethod();
          }

          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

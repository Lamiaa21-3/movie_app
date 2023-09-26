

import 'package:flutter/material.dart';
import 'package:movie_app/models/popular_model.dart';

import '../services/get_popular_services.dart';

class PopularProvider extends ChangeNotifier{

  PopularModel? _popularData;
  Future<void> weatherData( ) async
  {
    PopularServices services = PopularServices();
    PopularModel popular = await services.getPopular();
    _popularData=popular;
    notifyListeners();
  }
  PopularModel? get popularData => _popularData;
}

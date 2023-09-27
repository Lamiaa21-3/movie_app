

import 'package:flutter/material.dart';
import 'package:movie_app/models/topRated_model.dart';
import 'package:movie_app/services/get_topRated_services.dart';

class TopRatedProvider extends ChangeNotifier {

  TopRatedModel? _topRatedModel;
  TopRatedModel? get topRatedModel => _topRatedModel;

  Future <void> topRatedMethod () async
  {
  TopRatedServices services = TopRatedServices();
  TopRatedModel topRated =await services.getTopRated();
  _topRatedModel=topRated;
  notifyListeners();
  }
}
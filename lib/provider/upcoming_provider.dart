

import 'package:flutter/material.dart';
import 'package:movie_app/models/upcoming_model.dart';
import 'package:movie_app/services/upcoming_services.dart';
import 'package:provider/provider.dart';

class UpcomingProvider extends ChangeNotifier{
  UpComingModel? _upComingData;
  Future<void> upComingMethod () async
  {
    UpcomingServices service = UpcomingServices();
    UpComingModel upComing = await service.getUpcoming();
    _upComingData = upComing;
    notifyListeners();
  }
  UpComingModel ? get upComingData => _upComingData;


}
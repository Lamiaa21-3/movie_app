import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movie_app/models/popular_model.dart';


class PopularServices {
  String baseUrl = 'https://api.themoviedb.org/3/movie';
  String apiKey = '571d23f55070717630cfd356045c6e95';

  Future<PopularModel> getPopular() async
  {
    //print(';;;;;;;;;;;;;;;;;;;');
    PopularModel? popularModel ;
//"$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=7&aqi=no&alerts=no"
    Uri url = Uri.parse("$baseUrl/popular?api_key=$apiKey");
    http.Response response = await http.get(url);
    Map<String, dynamic>data = jsonDecode(response.body);
   // print(data['results'][0]['original_language']);

    popularModel = PopularModel.fromJson(data);
//print(popularModel.page);
    return popularModel;
  }





  }

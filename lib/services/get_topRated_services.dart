
import 'dart:convert';

import 'package:http/http.dart' as http ;
import 'package:movie_app/models/topRated_model.dart';

class TopRatedServices {
   String baseUrl = 'https://api.themoviedb.org/3/movie';
   String apiKey= '571d23f55070717630cfd356045c6e95' ;
  Future<TopRatedModel> getTopRated () async
  {
    Uri url = Uri.parse('$baseUrl/top_rated?api_key=$apiKey');
    http.Response response = await http.get(url);
    Map<String,dynamic> topData = jsonDecode(response.body);
    print(topData['results'][0]['title']);
    TopRatedModel topRatedModel = TopRatedModel.fromJson(topData);
    return topRatedModel;
  }

}




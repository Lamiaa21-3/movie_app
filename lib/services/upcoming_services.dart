import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:movie_app/models/upcoming_model.dart';

class UpcomingServices {
  String baseUrl ='https://api.themoviedb.org/3/movie';
  String apiKey ='571d23f55070717630cfd356045c6e95';
  Future<UpComingModel> getUpcoming() async {
    Uri url = Uri.parse('$baseUrl/upcoming?api_key=$apiKey');
   http.Response response = await  http.get(url);
   Map<String,dynamic> updata = jsonDecode(response.body);
  // print(updata);
      UpComingModel  upComingModel =UpComingModel.fromJson(updata);
    //print(updata['results'][0]['original_language']);
   return upComingModel ;
}
}
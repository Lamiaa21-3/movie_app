


class TopRatedModel {
int? page ;
List <TopData> topResult =[];

TopRatedModel.fromJson(Map<String ,dynamic> jsonData)
{
  page = jsonData['page'];
  topResult = jsonData['results'].map<TopData> ((e) => TopData.fromJson(e)).toList();
}
}
class TopData {
  String? topTitle;
  String? topImage;
  String? topPopularity;


  TopData.fromJson(jsonData)
  {
    topTitle = jsonData['title'];
    topImage = 'https://image.tmdb.org/t/p/w500${jsonData['poster_path']}';
    topPopularity = jsonData['vote_count'];
  }
}
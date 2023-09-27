


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
    topImage = jsonData['poster_path'];
    topPopularity = jsonData['vote_count'];
  }
}
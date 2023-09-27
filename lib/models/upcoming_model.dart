class UpComingModel {
  int ? page;
List<UpData> uresults =[];
UpComingModel.fromJson(Map<String,dynamic>jsonData)
{
  page = jsonData['page'];
  uresults=jsonData['results'].map<UpData>((e) => UpData.fromJson(e)).toList();
}
}
class UpData{
  String? uimage;
  String ?utitle ;
  String?urelease_date;
  UpData.fromJson(Map<String,dynamic>jsonData)
  {
    uimage = 'https://image.tmdb.org/t/p/w500${jsonData['poster_path']}';
    utitle=jsonData['original_title'];
    urelease_date=jsonData['overview'];
  }
}
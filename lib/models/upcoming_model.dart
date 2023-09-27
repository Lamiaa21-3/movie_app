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
    uimage = jsonData['poster_path'];
    utitle=jsonData['title'];
    urelease_date=jsonData['release_date'];
  }
}
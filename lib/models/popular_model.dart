class PopularModel {
   int? page;
  List <Data> result = [];

   PopularModel.fromJson( Map<String, dynamic>jsonData) {
   page = jsonData["page"];
   // if(jsonData["results"]!=null){
   //   jsonData['results'].forEach((v) {
   //     result.add(Data.fromJson(v));
   //   });
     result= jsonData['results'].map<Data>((e)=> Data.fromJson(e)).toList();
   // }
  }

}

class Data {
   String? image;
   String? title;
   String ?release_date;
   int ?vote_count;


   Data.fromJson(Map<String, dynamic> jsonData){
     image= 'https://image.tmdb.org/t/p/w500${jsonData['poster_path']}';
     title= jsonData['title'];
     release_date= jsonData['release_date'];
     vote_count= jsonData['vote_count'];
   }
}





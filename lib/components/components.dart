//
// import 'dart:js';
//
// import 'package:flutter/material.dart';
// import 'package:movie_app/models/popular_model.dart';
// import 'package:movie_app/provider/popular_provider.dart';
// import 'package:provider/provider.dart';
//
// Widget buildIetmPopula(){
//   List<PopularModel> popular ;
//   return Padding(
//     padding: const EdgeInsets.all(20),
//     child: Row(
//
//       children: [
//         Container(
//           width: 100,
//           height: 100,
//           color: Colors.teal,
//         ),
//         SizedBox(
//           width: 20,
//         ),
//         Consumer<PopularProvider>(
//           builder: (_,provider,__) =>
//           Column(
//
//             children: [
//               Text(provider.popularData.result,style: TextStyle(color: Colors.white),),
//
//               Text("33-2-2029",style: TextStyle(color: Colors.white),),
//
//               Text('444',style: TextStyle(color: Colors.white),),
//             ],
//           ),
//         ),
//       ],
//     ),
//   );
// }
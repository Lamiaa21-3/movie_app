import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:movie_app/models/popular_model.dart';
import 'package:movie_app/provider/popular_provider.dart';
import 'package:movie_app/provider/topRated_provider.dart';
import 'package:provider/provider.dart';

import '../provider/upcoming_provider.dart';



class TopRatedScreens extends StatelessWidget {
  TopRatedScreens({Key? key}) : super(key: key);

  // @override


  @override
  Widget build(BuildContext context) {
   // if(Provider.of<TopRatedProvider>(context).topRatedModel !=null) {
      return Expanded(
          child: Consumer<TopRatedProvider>(
              builder: (_, val, __) =>
                  ListView.separated(
                      itemCount: val.topRatedModel!.topResult.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            children: [
                               Image.network('${val.topRatedModel?.topResult[index].topImage}'),
                              SizedBox(
                                width:10,
                              ),
                              Column(
                                children: [
                                  Text(
                                    '${val.topRatedModel?.topResult[index]
                                        .topTitle}',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    '${val.topRatedModel?.topResult[index]
                                        .topPopularity}',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  // Text(
                                  //   '${provider.popularData?.result[index].vote_count}',
                                  //   style: TextStyle(color: Colors.white),
                                  // ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return Container(
                          width: double.infinity,
                          height: 1,
                          color: Colors.grey,
                        );
                      })));

    //   else{
    //   return CircularProgressIndicator();
    // }

  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:movie_app/models/popular_model.dart';
import 'package:movie_app/models/upcoming_model.dart';
import 'package:movie_app/provider/popular_provider.dart';
import 'package:provider/provider.dart';

import '../provider/upcoming_provider.dart';



class UpcomingScreen extends StatelessWidget {
  UpcomingScreen({Key? key}) : super(key: key);

  // @override
  List<PopularModel> populars = [];

  @override
  Widget build(BuildContext context) {
    if(Provider.of<UpcomingProvider>(context).upComingData != null) {
      return Expanded(
          child: Consumer<UpcomingProvider>(
              builder: (_, value, __) => ListView.separated(
                  itemCount: value.upComingData!.uresults.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Image.network('${value.upComingData?.uresults[index].uimage}',width: 100,height: 100,),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: 50,
                                child: Text(
                                  '${value.upComingData?.uresults[index].utitle}',


                                  style: TextStyle(color: Colors.white,overflow: TextOverflow.fade,),
                                ),
                              ),
                              SizedBox(
                                width: 50,
                                child: Text(
                                  '${value.upComingData?.uresults[index].urelease_date}',

                                  maxLines: 2,

                                  style: TextStyle(color: Colors.white,overflow: TextOverflow.ellipsis, ),


                                ),
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
    }
    else {
      return CircularProgressIndicator();
    }
  }
}

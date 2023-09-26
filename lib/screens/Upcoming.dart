import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:movie_app/models/popular_model.dart';
import 'package:movie_app/provider/popular_provider.dart';
import 'package:provider/provider.dart';

import '../provider/upcoming_provider.dart';



class UpcomingScreen extends StatelessWidget {
  UpcomingScreen({Key? key}) : super(key: key);

  // @override
  List<PopularModel> populars = [];

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Consumer<UpcomingProvider>(
            builder: (_, value, __) =>
                ListView.separated(
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          children: [
                           Image.asset('${value.upComingData?.uresults[index].uimage}'),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text(
                                  '${value.upComingData?.uresults[index].utitle}',
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                '${value.upComingData?.uresults[index].urelease_date}',
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
                    }

                )
        )
    );
  }
}

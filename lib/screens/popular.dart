import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/components/components.dart';
import 'package:movie_app/models/popular_model.dart';
import 'package:movie_app/provider/popular_provider.dart';
import 'package:provider/provider.dart';

import '../services/get_popular_services.dart';

class PopularScreen extends StatefulWidget {
  PopularScreen({Key? key}) : super(key: key);

  @override
  State<PopularScreen> createState() => _PopularScreenState();
}

class _PopularScreenState extends State<PopularScreen> {
  // @override
  // void initState() {
  //   super.initState();
  //   WidgetsBinding.instance.addPostFrameCallback((_){
  //     store();
  //   });
  // }
  //
  // void store()async {
  //   popular= await services.getPopular();
  //   setState(() {
  //
  //   });
  //   print(popular?.result[0].title);
  // }
  // PopularServices services = PopularServices();
  // PopularModel? popular ;

  List<PopularModel> populars = [];

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery
        .of(context)
        .size;
    if(Provider.of<PopularProvider>(context).popularData != null) {
     return Expanded(
          child: Consumer<PopularProvider>(
              builder: (_, provider, __) => ListView.separated(
                  itemCount: provider.popularData!.result.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Image.network('${provider.popularData?.result[index].image}',width: 100,height: 100,),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: 50,
                                child: Text(
                                  '${provider.popularData?.result[index].title}',

                                  style: TextStyle(color: Colors.white,overflow: TextOverflow.fade,),
                                ),
                              ),
                              Text(
                                '${provider.popularData?.result[index].release_date}',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                '${provider.popularData?.result[index].vote_count}',
                                style: TextStyle(color: Colors.white),
                              ),
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

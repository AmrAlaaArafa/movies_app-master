

import 'package:flutter/material.dart';
import 'package:movies/data/api_manager.dart';

import '../../../../model/PopularDM.dart';
import '../../../../utilities/app_colors.dart';

class HomeTab extends StatelessWidget {
  List<PopularDM> poster =[];

  @override
  Widget build(BuildContext context) {
    buildPopular(context);
  return  Container();

  }
}

 Widget buildPopular(BuildContext context){
  return FutureBuilder<PopularDM>(
      future: ApiManager.getPopular(),
      builder: (context,snapShot){
        if(snapShot.hasError){
        print("haserror${snapShot.hasError}");
        return Text(snapShot.error.toString());
   }else if(snapShot.hasData){
          print("hasData${snapShot.hasData}");
          return getHomePopular(snapShot.data!.results!);
   }else{
          print("loading");
          return Center(child: CircularProgressIndicator(),);
   }

   });
 }

 Widget getHomePopular(List<Result> result){
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){

        }
    );
 }
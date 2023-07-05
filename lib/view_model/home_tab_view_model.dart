

import 'package:flutter/material.dart';
import 'package:movies/data/api_manager.dart';
import 'package:movies/model/PopularDM.dart';

// class HomeTabViewModel extends ChangeNotifier {
// bool isLoading = false;
// String errormsg="";
//
//  Future<PopularDM> getPopular()async{
//   isLoading =true;
//   PopularDM popularDM = await ApiManager.getPopular();
//   if(popularDM.statusCode!= null || popularDM.statusMessage!=null || popularDM.success!=null){
//      errormsg= popularDM.statusMessage!;
//   }
//   else if(popularDM.results!=null || popularDM.page){
//     return popularDM;
//   }
//   else{
//     isLoading= false;
//
//   }
//   }
//
// }

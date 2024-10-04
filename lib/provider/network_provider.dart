

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';

class NetworkModel extends ChangeNotifier{

 bool _connection=false;
 bool get connection=>_connection;
  var result=Connectivity().checkConnectivity();
  
   dataConnect(){
    if (result==ConnectivityResult.mobile|| result==ConnectivityResult.wifi){
      _connection=false;
    }
    else{
      _connection=true;
    }
    notifyListeners();
  }
  

}
import 'dart:convert';

import 'package:covid_19_tracker_app/Model/WorldStatesModel.dart';
import 'package:covid_19_tracker_app/Services/Utilties/app_url.dart';
import 'package:http/http.dart' as http;

class StatesServices{
  Future<WorldStatesModel>fecthWorldStatesRecords()async{
    final response = await http.get(Uri.parse(AppUrl.worldStatesApi));
    if(response.statusCode==200){
      var data = jsonDecode(response.body);
      return WorldStatesModel.fromJson(data);

    }
    else {
      throw Exception('Error');
    }
  }
  Future<List<dynamic>> countriesListApi()async{
    var data;
    final response = await http.get(Uri.parse(AppUrl.countriesList));
    if(response.statusCode==200){
       data = jsonDecode(response.body);
      return data;

    }
    else {
      throw Exception('Error');
    }
  }

}


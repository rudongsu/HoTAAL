import 'dart:async';
import 'dart:convert';
import 'package:hotaal/model/alert_model.dart';
import 'package:http/http.dart' as http;

class AlertDao{
  static Future<AlertModel> fetch(String url) async{
    final response = await http.get(url);
    if(response.statusCode == 200){
      var result = json.decode(response.body);
      return AlertModel.fromJson(result);
    }else{
      throw Exception('failed connect');
    }
  }
}

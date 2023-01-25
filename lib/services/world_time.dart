import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WorldTime {
  String location;
  late String time;
  String flag;
  String url;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    // make the request
    var link = Uri.parse('http://worldtimeapi.org/api/timezone/$url');
    var response = await http.get(link);
    Map data = jsonDecode(response.body);
    //print(data);

    // get properties from data
    String datetime = data['datetime'];
    String timezone = data['timezone'];
    //print( 'Current date in ' + '$timezone' + ' is: ' + '$datetime ' + '$offset');

    //create dateTime object
    DateTime now = DateTime.parse(datetime.substring(0, 26));
    this.time = now.toString();
  }
}

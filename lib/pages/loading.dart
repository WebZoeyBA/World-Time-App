import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    // make the request
    var url = Uri.parse('http://worldtimeapi.org/api/timezone/Europe/Sarajevo');
    var response = await http.get(url);
    Map data = jsonDecode(response.body);
    //print(data);

    // get properties from data
    String datetime = data['datetime'];
    String timezone = data['timezone'];
    //print( 'Current date in ' + '$timezone' + ' is: ' + '$datetime ' + '$offset');

    //create dateTime object
    DateTime now = DateTime.parse(datetime.substring(0, 26));
    print(now);
  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Loading screen"),
    );
  }
}

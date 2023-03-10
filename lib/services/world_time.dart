import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location; // location name for UI
  late String time; // the time in that location
  String flag; // url to an asset flag icon
  String url; // location url for api endpoint
  late bool? isDayTime; // true or false if daytime or not

  WorldTime(
      {required this.location,
      required this.flag,
      required this.url,
      this.isDayTime});

  Future<void> getTime() async {
    await Future.delayed(Duration(seconds: 3), () {});

    try {
      // make the request
      var link = Uri.parse('http://worldtimeapi.org/api/timezone/$url');
      var response = await http.get(link);
      Map data = jsonDecode(response.body);

      // get properties from json
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      // create DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      // set the time property
      isDayTime = now.hour > 6 && now.hour < 20 ? true : false;
      print(isDayTime);
      time = DateFormat('HH:mm:ss').format(now);
    } catch (e) {
      time = 'could not get time';
    }
  }
}

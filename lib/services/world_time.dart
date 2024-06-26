import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';


class WorldTime {

  // Location
  late String location; // location name for the UI
  late String time; // the time in that location
  late String flag; // url to an asset flag icon
  late String url; // location url for api endpoint
  bool isDaytime = true; // true or false if daytime or not

  WorldTime({required this.location, required this.flag, required this.url});


  Future <void> getTime() async {
    
    try {
    // make the request
    http.Response response = await http.get(Uri.parse('https://worldtimeapi.org/api/timezone/$url')); 
    Map data = jsonDecode(response.body);

    //await Future.delayed(const Duration(seconds: 3));

    // get properties from data
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);

    // creat datetime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));

    // set the time property
    isDaytime = now.hour > 6 && now.hour < 20 ? true : false;
    time = DateFormat.jm().format(now);
    }



    catch (e) {
      //print('caught error: $e');
      time = 'could not get time data';
    }
  }
}


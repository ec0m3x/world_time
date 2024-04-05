
import 'package:flutter/material.dart';
import 'package:world_time/view/home.dart';
import 'package:world_time/view/loading.dart';
import 'package:world_time/view/choose_location.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    },
  ));
}


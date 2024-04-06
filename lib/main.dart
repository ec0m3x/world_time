
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:world_time/pages/home.dart';
import 'package:world_time/pages/loading.dart';
import 'package:world_time/pages/choose_location.dart';
import 'package:world_time/pages/profile.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: '/',
    getPages: [
      GetPage(name: '/', page: () => const Loading()),
      GetPage(name: '/home', page: () => const Home()),
      GetPage(name: '/location', page: () => const ChooseLocation()),
      GetPage(name: '/profile', page: () => const Profile())
    ],
  ));
}


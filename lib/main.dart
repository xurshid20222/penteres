import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:pinterest/pages/home/home_page.dart';
import 'package:pinterest/pages/message/message_page.dart';
import 'package:pinterest/pages/profile/profile_page.dart';
import 'package:pinterest/pages/search/search_page.dart';
import 'package:pinterest/services/di_service.dart';

void main() async {
  await DIService.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home:  HomePage(),
      routes: {
        HomePage.id: (context) =>  HomePage(),
        SearchPage.id: (context) =>   SearchPage(),
        MessagePage.id: (context) =>  MessagePage(),
        ProfilePage.id: (context) =>  ProfilePage(),
      },
    );
  }
}



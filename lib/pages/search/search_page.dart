import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../home/home_page_controller.dart';

class SearchPage extends StatelessWidget {
  static const id = '/search_page';

  HomeController homeController = Get.find<HomeController>();

   SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children:  [
           Center(child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.search, color: Colors.grey,size: 40,),
              SizedBox(width: 20,),
              Text('Search', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700, fontSize: 30),),
            ],
          )),

          Container(
            child: homeController.bottomNavigationBar(),
          )
        ],

      ),
    );
  }
}

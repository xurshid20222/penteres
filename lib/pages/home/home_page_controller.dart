
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:pinterest/pages/message/message_page.dart';
import 'package:pinterest/pages/profile/profile_page.dart';
import 'package:pinterest/pages/search/search_page.dart';

import 'home_page.dart';

class HomeController extends GetxController {




  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  int indexPage = 0;

  void changeIndex(int index) {
    indexPage = index;
    pageController.animateToPage(
        indexPage, duration: const Duration(milliseconds: 500), curve: Curves.ease);
    update();
  }

  void openMessagePage(){
    Get.off( MessagePage());
  }

  void openHomePage(){
    Get.off( HomePage());
  }

  void openSearchPage(){
    Get.off( SearchPage());
  }

  void openProfilePage(){
    Get.off( ProfilePage());
  }

  List imageList = [
    'assets/images/img1.png',
    'assets/images/img2.png',
    'assets/images/img3.png',
    'assets/images/img4.png',
    'assets/images/img5.png',
    'assets/images/img6.png',
    'assets/images/img7.png',
  ];

   ss(int indexi){
    for(var item in imageList){
      return item;
    }
  }

  Widget bottomNavigationBar(){
    return  Container(
      height: 60,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 40),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Expanded(
              child: IconButton(onPressed:  openHomePage,
                  icon: const Icon(Icons.home))
          ),
          Expanded(
              child:  IconButton(onPressed: openSearchPage,
                  icon: const Icon(Icons.search))
          ),
          Expanded(
              child:  IconButton(onPressed: openMessagePage,
                  icon: const Icon(Icons.sms))
          ),
          Expanded(
            child: InkWell(
              onTap: openProfilePage,
              child: Container(
                height: 30,
                width: 30,
                margin: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/images/avatar2.png'),
                      // fit: BoxFit.cover,
                    )),
              ),
            ),
          ),
        ],
      ),

    );
  }

}
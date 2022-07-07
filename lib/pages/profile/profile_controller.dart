import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:pinterest/pages/profile/profile_page.dart';
import 'package:pinterest/pages/search/search_page.dart';

class ProfileController extends GetxController {




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



  void openSearchPage(){
    Get.to(SearchPage());
  }

  void openProfilePage(){
    Get.to(ProfilePage());
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
}
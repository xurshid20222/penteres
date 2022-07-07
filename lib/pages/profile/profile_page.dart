import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:pinterest/pages/profile/profile_controller.dart';

import '../home/home_page_controller.dart';

class ProfilePage extends StatelessWidget {
  static const id = '/profile_page';

  HomeController homeController = Get.find<HomeController>();

   ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leadingWidth: 70,
            leading: Container(
              width: 15,
              height: 15,
              decoration: const BoxDecoration(
                  image:  DecorationImage(
                      image: AssetImage('assets/images/avatar2.png')),
                  shape: BoxShape.circle,
                 ),
            ),
            //#tapBarView
            title: Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              color: Colors.transparent,
              width: double.infinity,
              height: 60,
              child: Row(
                children: [
                  //#tabMenue1
                  Container(
                    alignment: Alignment.center,
                    height: 45,
                    width: 81,
                    decoration: BoxDecoration(
                      color: controller.indexPage == 0
                          ? Colors.black
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: InkWell(
                      onTap: () {
                        controller.changeIndex(0);
                      },
                      child: Center(
                          child: controller.indexPage == 0
                              ? const Text(
                            "Updates",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          )
                              : const Text(
                            "Updates",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          )),
                    ),
                  ),
                  //#tabMenue2
                  Container(
                    height: 45,
                    width: 81,
                    decoration: BoxDecoration(
                      color: controller.indexPage == 1
                          ? Colors.black
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: InkWell(
                      onTap: () {
                        controller.changeIndex(1);
                      },
                      child: Center(
                        child: controller.indexPage == 1
                            ? const Text(
                          "Inbox",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )
                            : const Text(
                          "Inbox",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            centerTitle: true,
            actions:  [
              Container(
                height: 25,
                width: 25,
                margin: const EdgeInsets.only(right: 10),

                child: const Image(
                    image: AssetImage('assets/images/uchburchak_last.png',)),
              )
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(70),
              child:  SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 15, right: 20),
                        height: 50,
                        width: 280,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search, color: Colors.grey,),
                            border: InputBorder.none,
                          ),
                        ),
                       ),
                      const SizedBox(
                        height: 20,
                        width: 20,
                        child: Image(
                            image: AssetImage('assets/images/setting.png')),
                      ),
                      const SizedBox(width: 10,),
                      const Icon(Icons.add, color: Colors.black, size: 28,),
                      const SizedBox(width: 10,),
                    ],
                  ),
                ),

            ),
          ),
          body: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              PageView(
                controller: controller.pageController,
                onPageChanged: (index) {
                  controller.changeIndex(index);
                },
                children: [
                  ListView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20,),
                          //#containerImage1
                          SizedBox(
                            height: 240,
                            width: double.infinity,
                            child: _imageCategory(
                                image1: 'assets/images/img1.png',
                                image2: 'assets/images/img7.png',
                                image3: 'assets/images/img3.png'),
                          ),
                          const SizedBox(height: 10,),
                          //#title1
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text('Title', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18),),
                              ),
                            ],
                          ),

                          const SizedBox(height: 20,),
                          //#containerImage2
                          SizedBox(
                            height: 240,
                            width: double.infinity,
                            child: _imageCategory(
                                image1: 'assets/images/img8.png',
                                image2: 'assets/images/img2.png',
                                image3: 'assets/images/img6.png'),
                          ),
                          const SizedBox(height: 10,),
                          //#title2
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text('Title', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18),),
                              ),
                            ],
                          ),

                          const SizedBox(height: 20,),
                          //#containerImage3
                          SizedBox(
                            height: 240,
                            width: double.infinity,
                            child: _imageCategory(
                                image1: 'assets/images/img4.png',
                                image2: 'assets/images/img5.png',
                                image3: 'assets/images/img7.png'),
                          ),
                          const SizedBox(height: 10,),
                          //#title3
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text('Title', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18),),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ],
                  ),
                  ListView(
                    physics: const BouncingScrollPhysics(),
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20,),
                          //#containerImage1
                          SizedBox(
                            height: 240,
                            width: double.infinity,
                            child: _imageCategory(
                                image1: 'assets/images/img1.png',
                                image2: 'assets/images/img7.png',
                                image3: 'assets/images/img3.png'),
                          ),
                          const SizedBox(height: 10,),
                          //#title1
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text('Title', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18),),
                              ),
                            ],
                          ),

                          const SizedBox(height: 20,),
                          //#containerImage2
                          SizedBox(
                            height: 240,
                            width: double.infinity,
                            child: _imageCategory(
                                image1: 'assets/images/img8.png',
                                image2: 'assets/images/img2.png',
                                image3: 'assets/images/img6.png'),
                          ),
                          const SizedBox(height: 10,),
                          //#title2
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text('Title', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18),),
                              ),
                            ],
                          ),

                          const SizedBox(height: 20,),
                          //#containerImage3
                          SizedBox(
                            height: 240,
                            width: double.infinity,
                            child: _imageCategory(
                                image1: 'assets/images/img4.png',
                                image2: 'assets/images/img5.png',
                                image3: 'assets/images/img7.png'),
                          ),
                          const SizedBox(height: 10,),
                          //#title3
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text('Title', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 18),),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ],
                  ),

                ],
              ),
              Container(
                child: homeController.bottomNavigationBar(),
              )
            ],
          ),
        );
      },
    );
  }

 Widget _imageCategory({required String image1,required String image2,required String image3,}){
    return  Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 320,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16)
      ),
      child:  Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 4,
                child:
              Container(
                height: 120,
                width: 250,
                alignment: Alignment.center,
                decoration:  BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image1),
                      fit: BoxFit.cover
                  ),
                  borderRadius:const BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
                ),
              ),
              ),
            ],
          ),
          const SizedBox(width: 0.5,),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    height: 120,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(image2),
                          fit: BoxFit.cover
                      ),
                      borderRadius:const BorderRadius.only(topRight: Radius.circular(15)),
                    ),
                  ),
                ),
                const SizedBox(width: 20,),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    height: 120,
                    width: 150,
                    decoration:  BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(image3),
                          fit: BoxFit.cover
                      ),
                      borderRadius:const BorderRadius.only(bottomRight: Radius.circular(15),),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
 }

}

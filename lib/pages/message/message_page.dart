import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:pinterest/pages/home/home_page_controller.dart';
import 'package:pinterest/pages/search/search_controller.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/material.dart';

import 'message_controller.dart';

class MessagePage extends StatelessWidget {
  static const id = '/home_page';

  HomeController homeController = Get.find<HomeController>();

  List imageList = [
    'assets/images/rimg1.png',
    'assets/images/rimg2.png',
    'assets/images/rimg3.png',
    'assets/images/rimg4.png',
    'assets/images/rimg5.png',
    'assets/images/rimg6.png',
    'assets/images/rimg7.png',
    'assets/images/img8.png',
    'assets/images/img9.png',
  ];

  ss() {
    for (int i = 0; i < imageList.length; i++) {
      return imageList[i];
    }
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MessageController>(
      init: MessageController(),
      builder: (controller) {
        return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(14),
                child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 100),
                    color: Colors.transparent,
                    width: double.infinity,
                    height: 70,
                    child: Row(
                      children: [
                        //#tabMenue1
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            height: 45,
                            width: 61,
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
                        ),
                        //#tabMenue2
                        Expanded(
                          child: Container(
                            height: 45,
                            width: 61,
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
                                  )),
                            ),
                          ),
                        ),
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
                        // #contentOne
                        Row(
                          children:  [
                            const SizedBox(width: 10,),
                            Container(
                              height: 10,
                              width: 10,
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 10,),
                            const Text('See what Kiki Smith and 7 other friends\nin Home decor, Food and drink and 1\nother topic'),
                            const SizedBox(width: 13,),
                            Transform.translate(
                              offset: const Offset(-5, 0),
                              child: makeLove(image: 'assets/images/avatar1.png'),
                            ),
                            Transform.translate(
                              offset: const Offset(-15, 0),
                              child: makeLove(image: 'assets/images/avatar2.png'),
                            ),
                            Transform.translate(
                              offset: const Offset(-25, 0),
                              child: makeLove(image: 'assets/images/avatar3.png'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16,),
                        // #contentTwo
                        Row(
                          children:  [
                            const SizedBox(width: 10,),
                            Container(
                              height: 10,
                              width: 10,
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 10,),
                            const Text('Patio Lights Strings Ideas, Blueberry Pancakes\nand more ideas to search for'),
                          ],
                        ),
                        const SizedBox(height: 16,),

                        //#ImageContainerOne
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          height: 220,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16)
                          ),
                          child:  Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                   Expanded(child:  Container(
                                     height: 120,
                                     width: 200,
                                     alignment: Alignment.center,
                                     decoration:  const BoxDecoration(
                                       image: DecorationImage(
                                           image: AssetImage('assets/images/rimg2.png'),
                                           fit: BoxFit.cover
                                       ),
                                       borderRadius: BorderRadius.only(topLeft: Radius.circular(15)),
                                     ),
                                     child: const Text('Title Name here', style: TextStyle(
                                       fontWeight: FontWeight.w700, color: Colors.white,
                                       fontSize: 18
                                     ),),
                                   ),
                                   ),
                                    const SizedBox(height: 2,),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 120,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage('assets/images/rimg4.png'),
                                              fit: BoxFit.cover
                                          ),
                                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15))
                                        ),
                                        child: const Text('Title Name here', style: TextStyle(
                                            fontWeight: FontWeight.w700, color: Colors.white,
                                            fontSize: 18
                                        ),),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                             const SizedBox(width: 2,),
                             Expanded(
                                 child:  Column(
                                   children: [
                                     Expanded(
                                       child: Container(
                                         alignment: Alignment.center,
                                       height: 120,
                                       width: 200,
                                       decoration: const BoxDecoration(
                                           image: DecorationImage(
                                               image: AssetImage('assets/images/rimg3.png'),
                                               fit: BoxFit.cover
                                           ),
                                           borderRadius: BorderRadius.only(topRight: Radius.circular(15))
                                       ),
                                       child: const Text('Title Name here', style: TextStyle(
                                           fontWeight: FontWeight.w700, color: Colors.white,
                                           fontSize: 18
                                       ),),
                                     ),
                                     ),
                                     const SizedBox(height: 2,),
                                     Expanded(
                                       child: Container(
                                         alignment: Alignment.center,
                                         height: 120,
                                         width: 200,
                                         decoration: const BoxDecoration(
                                           image: DecorationImage(
                                               image: AssetImage('assets/images/rimg1.png'),
                                               fit: BoxFit.cover
                                           ),
                                             borderRadius: BorderRadius.only(bottomRight: Radius.circular(15))
                                         ),
                                         child: const Text('Title Name here', style: TextStyle(
                                             fontWeight: FontWeight.w700, color: Colors.white,
                                             fontSize: 18
                                         ),),
                                       ),
                                     ),
                                   ],
                                 ),),
                            ],
                          ),
                        ),

                        const SizedBox(height: 46,),
                        //#title2
                        Row(
                          children:  [
                            const SizedBox(width: 10,),
                            Container(
                              height: 10,
                              width: 10,
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 10,),
                            const Text('Your Pin was Saved 2 times'),
                            SizedBox(height: 20,),


          ],
                        ),
                        const SizedBox(height: 16,),
                        //#ImageContainerTwo
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          height: 220,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16)
                          ),
                          child:  Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Column(
                                  children: [
                                    Expanded(child:
                                    Container(
                                      height: 120,
                                      width: 200,
                                      alignment: Alignment.center,
                                      decoration:  const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/images/rimg7.png'),
                                            fit: BoxFit.cover
                                        ),
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
                                      ),
                                    ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 2,),
                              Expanded(
                                child:  Column(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 120,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage('assets/images/rimg3.png'),
                                                fit: BoxFit.cover
                                            ),

                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 2,),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 120,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage('assets/images/rimg5.png'),
                                                fit: BoxFit.cover
                                            ),

                                        ),
                                      ),
                                    ),
                                  ],
                                ),),
                              const SizedBox(width: 2,),
                              Expanded(
                                child:  Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 120,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage('assets/images/rimg6.png'),
                                                fit: BoxFit.cover
                                            ),
                                            borderRadius: BorderRadius.only(topRight: Radius.circular(15))
                                        ),

                                      ),
                                    ),
                                    const SizedBox(height: 2,),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 120,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage('assets/images/img8.png'),
                                                fit: BoxFit.cover
                                            ),
                                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(15))
                                        ),
                                      ),
                                    ),
                                  ],
                                ),),
                            ],
                          ),
                        ),

                        const SizedBox(height: 46,),
                        //#title3
                        Row(
                          children:  [
                            const SizedBox(width: 10,),
                            Container(
                              height: 10,
                              width: 10,
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 10,),
                            const Text('13 more ideas for your board Food'),
                            SizedBox(height: 20,),


                          ],
                        ),
                        const SizedBox(height: 16,),
                        //#ImageContainerThree
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          height: 220,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16)
                          ),
                          child:  Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Expanded(child:  Container(
                                      height: 120,
                                      width: 200,
                                      alignment: Alignment.center,
                                      decoration:  const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/images/img2.png'),
                                            fit: BoxFit.cover
                                        ),
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15)),
                                      ),
                                    ),
                                    ),
                                    const SizedBox(height: 2,),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 120,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage('assets/images/img4.png'),
                                                fit: BoxFit.cover
                                            ),
                                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15))
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 2,),
                              Expanded(
                                child: Column(
                                  children: [
                                    Expanded(child:  Container(
                                      height: 120,
                                      width: 200,
                                      alignment: Alignment.center,
                                      decoration:  const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/images/rimg2.png'),
                                            fit: BoxFit.cover
                                        ),
                                      ),
                                    ),
                                    ),
                                    const SizedBox(height: 2,),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 120,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage('assets/images/rimg4.png'),
                                                fit: BoxFit.cover
                                            ),
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              const SizedBox(width: 2,),
                              Expanded(
                                child:  Column(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 120,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage('assets/images/rimg3.png'),
                                              fit: BoxFit.cover
                                          ),

                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 2,),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 120,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage('assets/images/rimg5.png'),
                                              fit: BoxFit.cover
                                          ),

                                        ),
                                      ),
                                    ),
                                  ],
                                ),),
                              const SizedBox(width: 2,),
                              Expanded(
                                child:  Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 120,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage('assets/images/rimg6.png'),
                                                fit: BoxFit.cover
                                            ),
                                            borderRadius: BorderRadius.only(topRight: Radius.circular(15))
                                        ),

                                      ),
                                    ),
                                    const SizedBox(height: 2,),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 120,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage('assets/images/img8.png'),
                                                fit: BoxFit.cover
                                            ),
                                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(15))
                                        ),
                                      ),
                                    ),
                                  ],
                                ),),
                            ],
                          ),
                        ),
                        const SizedBox(height: 30,),
                      ],
                    ),
                    ListView(
                      physics: const BouncingScrollPhysics(),
                      children: [
                        // #contentOne
                        Row(
                          children:  [
                            const SizedBox(width: 10,),
                            Container(
                              height: 10,
                              width: 10,
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 10,),
                            const Text('See what Kiki Smith and 7 other friends\nin Home decor, Food and drink and 1\nother topic'),
                            const SizedBox(width: 13,),
                            Transform.translate(
                              offset: const Offset(-5, 0),
                              child: makeLove(image: 'assets/images/avatar1.png'),
                            ),
                            Transform.translate(
                              offset: const Offset(-15, 0),
                              child: makeLove(image: 'assets/images/avatar2.png'),
                            ),
                            Transform.translate(
                              offset: const Offset(-25, 0),
                              child: makeLove(image: 'assets/images/avatar3.png'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16,),
                        // #contentTwo
                        Row(
                          children:  [
                            const SizedBox(width: 10,),
                            Container(
                              height: 10,
                              width: 10,
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 10,),
                            const Text('Patio Lights Strings Ideas, Blueberry Pancakes\nand more ideas to search for'),
                          ],
                        ),
                        const SizedBox(height: 16,),

                        //#ImageContainerOne
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          height: 220,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16)
                          ),
                          child:  Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Expanded(child:  Container(
                                      height: 120,
                                      width: 200,
                                      alignment: Alignment.center,
                                      decoration:  const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/images/rimg2.png'),
                                            fit: BoxFit.cover
                                        ),
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15)),
                                      ),
                                      child: const Text('Title Name here', style: TextStyle(
                                          fontWeight: FontWeight.w700, color: Colors.white,
                                          fontSize: 18
                                      ),),
                                    ),
                                    ),
                                    const SizedBox(height: 2,),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 120,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage('assets/images/rimg4.png'),
                                                fit: BoxFit.cover
                                            ),
                                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15))
                                        ),
                                        child: const Text('Title Name here', style: TextStyle(
                                            fontWeight: FontWeight.w700, color: Colors.white,
                                            fontSize: 18
                                        ),),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              const SizedBox(width: 2,),
                              Expanded(
                                child:  Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 120,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage('assets/images/rimg3.png'),
                                                fit: BoxFit.cover
                                            ),
                                            borderRadius: BorderRadius.only(topRight: Radius.circular(15))
                                        ),
                                        child: const Text('Title Name here', style: TextStyle(
                                            fontWeight: FontWeight.w700, color: Colors.white,
                                            fontSize: 18
                                        ),),
                                      ),
                                    ),
                                    const SizedBox(height: 2,),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 120,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage('assets/images/rimg1.png'),
                                                fit: BoxFit.cover
                                            ),
                                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(15))
                                        ),
                                        child: const Text('Title Name here', style: TextStyle(
                                            fontWeight: FontWeight.w700, color: Colors.white,
                                            fontSize: 18
                                        ),),
                                      ),
                                    ),
                                  ],
                                ),),
                            ],
                          ),
                        ),

                        const SizedBox(height: 46,),
                        //#title2
                        Row(
                          children:  [
                            const SizedBox(width: 10,),
                            Container(
                              height: 10,
                              width: 10,
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 10,),
                            const Text('Your Pin was Saved 2 times'),
                            SizedBox(height: 20,),


                          ],
                        ),
                        const SizedBox(height: 16,),
                        //#ImageContainerTwo
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          height: 220,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16)
                          ),
                          child:  Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Column(
                                  children: [
                                    Expanded(child:
                                    Container(
                                      height: 120,
                                      width: 200,
                                      alignment: Alignment.center,
                                      decoration:  const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/images/rimg7.png'),
                                            fit: BoxFit.cover
                                        ),
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15), bottomLeft: Radius.circular(15)),
                                      ),
                                    ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 2,),
                              Expanded(
                                child:  Column(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 120,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage('assets/images/rimg3.png'),
                                              fit: BoxFit.cover
                                          ),

                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 2,),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 120,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage('assets/images/rimg5.png'),
                                              fit: BoxFit.cover
                                          ),

                                        ),
                                      ),
                                    ),
                                  ],
                                ),),
                              const SizedBox(width: 2,),
                              Expanded(
                                child:  Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 120,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage('assets/images/rimg6.png'),
                                                fit: BoxFit.cover
                                            ),
                                            borderRadius: BorderRadius.only(topRight: Radius.circular(15))
                                        ),

                                      ),
                                    ),
                                    const SizedBox(height: 2,),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 120,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage('assets/images/img8.png'),
                                                fit: BoxFit.cover
                                            ),
                                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(15))
                                        ),
                                      ),
                                    ),
                                  ],
                                ),),
                            ],
                          ),
                        ),

                        const SizedBox(height: 46,),
                        //#title3
                        Row(
                          children:  [
                            const SizedBox(width: 10,),
                            Container(
                              height: 10,
                              width: 10,
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 10,),
                            const Text('13 more ideas for your board Food'),
                            SizedBox(height: 20,),


                          ],
                        ),
                        const SizedBox(height: 16,),
                        //#ImageContainerThree
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          height: 220,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16)
                          ),
                          child:  Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    Expanded(child:  Container(
                                      height: 120,
                                      width: 200,
                                      alignment: Alignment.center,
                                      decoration:  const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/images/img2.png'),
                                            fit: BoxFit.cover
                                        ),
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(15)),
                                      ),
                                    ),
                                    ),
                                    const SizedBox(height: 2,),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 120,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage('assets/images/img4.png'),
                                                fit: BoxFit.cover
                                            ),
                                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15))
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 2,),
                              Expanded(
                                child: Column(
                                  children: [
                                    Expanded(child:  Container(
                                      height: 120,
                                      width: 200,
                                      alignment: Alignment.center,
                                      decoration:  const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/images/rimg2.png'),
                                            fit: BoxFit.cover
                                        ),
                                      ),
                                    ),
                                    ),
                                    const SizedBox(height: 2,),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 120,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage('assets/images/rimg4.png'),
                                              fit: BoxFit.cover
                                          ),
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              const SizedBox(width: 2,),
                              Expanded(
                                child:  Column(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 120,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage('assets/images/rimg3.png'),
                                              fit: BoxFit.cover
                                          ),

                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 2,),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 120,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage('assets/images/rimg5.png'),
                                              fit: BoxFit.cover
                                          ),

                                        ),
                                      ),
                                    ),
                                  ],
                                ),),
                              const SizedBox(width: 2,),
                              Expanded(
                                child:  Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 120,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage('assets/images/rimg6.png'),
                                                fit: BoxFit.cover
                                            ),
                                            borderRadius: BorderRadius.only(topRight: Radius.circular(15))
                                        ),

                                      ),
                                    ),
                                    const SizedBox(height: 2,),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 120,
                                        width: 200,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage('assets/images/img8.png'),
                                                fit: BoxFit.cover
                                            ),
                                            borderRadius: BorderRadius.only(bottomRight: Radius.circular(15))
                                        ),
                                      ),
                                    ),
                                  ],
                                ),),
                            ],
                          ),
                        ),
                        const SizedBox(height: 30,),
                      ],
                    ),
                  ],
                ),
                Container(
                  child: homeController.bottomNavigationBar(),
                )
              ],
            ));
      },
    );
  }



  Widget makeLove({required String image}) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image)
          ),
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)),
    );
  }
 Widget Tile({required int index}){
    return Container(
        height: 200,
        width: double.infinity,
        color: Colors.red,
      );

 }

}

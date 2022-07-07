import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:pinterest/pages/home/home_page_controller.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const id = '/home_page';

  HomeController controller = Get.find<HomeController>();

  List imageList = [
    'assets/images/img1.png',
    'assets/images/img2.png',
    'assets/images/img3.png',
    'assets/images/img4.png',
    'assets/images/img5.png',
    'assets/images/img6.png',
    'assets/images/img7.png',
    'assets/images/img8.png',
    'assets/images/img9.png',
  ];

   ss(){
    for(int i = 0; i < imageList.length; i++){
      return imageList[i];
    }
  }
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              bottom: PreferredSize(

                preferredSize: const Size.fromHeight(14),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                    color: Colors.transparent,
                    width: double.infinity,
                    height: 70,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
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
                                          "For you",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        )
                                      : const Text(
                                          "For you",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        )),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
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
                                          "Today",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        )
                                      : const Text(
                                          "Today",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        )),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 45,
                            width: 81,
                            decoration: BoxDecoration(
                              color: controller.indexPage == 2
                                  ? Colors.black
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: InkWell(
                              onTap: () {
                                controller.changeIndex(2);
                              },
                              child: Center(
                                  child: controller.indexPage == 2
                                      ? const Text(
                                          "Following",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        )
                                      : const Text(
                                          "Following",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        )),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 45,
                            width: 81,
                            decoration: BoxDecoration(
                              color: controller.indexPage == 3
                                  ? Colors.black
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: InkWell(
                              onTap: () {
                                controller.changeIndex(3);
                              },
                              child: Center(
                                  child: controller.indexPage == 3
                                      ? const Text(
                                          "Health",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        )
                                      : const Text(
                                          "Health",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        )),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 45,
                            width: 81,
                            decoration: BoxDecoration(
                              color: controller.indexPage == 4
                                  ? Colors.black
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: InkWell(
                              onTap: () {
                                controller.changeIndex(4);
                              },
                              child: Center(
                                  child: controller.indexPage == 4
                                      ? const Text(
                                          "Recipes",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white),
                                        )
                                      : const Text(
                                          "Recipes",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        )),
                            ),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
            body: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: PageView(
                    controller: controller.pageController,
                    onPageChanged: (index) {
                      controller.changeIndex(index);
                    },
                    children: [
                      MasonryGridView.count(
                        physics: const BouncingScrollPhysics(),
                        itemCount: imageList.length,
                        crossAxisCount: 2,
                        mainAxisSpacing: 4,
                        crossAxisSpacing: 4,
                        itemBuilder: (context, index) {
                          return index.isEven
                              ? Tile1(
                            index: index,
                            extent: 2,
                          )
                              : Tile2(
                            index: index,
                            extent: (index * 2),

                          );
                        },
                      ),
                      MasonryGridView.count(
                        physics: const BouncingScrollPhysics(),
                        itemCount: imageList.length,
                        crossAxisCount: 2,
                        mainAxisSpacing: 4,
                        crossAxisSpacing: 4,
                        itemBuilder: (context, index) {
                          return index.isEven
                              ? Tile1(
                            index: index,
                            extent: 2,
                          )
                              : Tile2(
                            index: index,
                            extent: (index * 2),

                          );
                        },
                      ),
                      MasonryGridView.count(
                        physics: const BouncingScrollPhysics(),
                        itemCount: imageList.length,
                        crossAxisCount: 2,
                        mainAxisSpacing: 4,
                        crossAxisSpacing: 4,
                        itemBuilder: (context, index) {
                          return index.isEven
                              ? Tile1(
                            index: index,
                            extent: 2,
                          )
                              : Tile2(
                            index: index,
                            extent: (index * 2),

                          );
                        },
                      ),
                      MasonryGridView.count(
                        physics: const BouncingScrollPhysics(),
                        itemCount: imageList.length,
                        crossAxisCount: 2,
                        mainAxisSpacing: 4,
                        crossAxisSpacing: 4,
                        itemBuilder: (context, index) {
                          return index.isEven
                              ? Tile1(
                            index: index,
                            extent: 2,
                          )
                              : Tile2(
                            index: index,
                            extent: (index * 2),

                          );
                        },
                      ),
                      MasonryGridView.count(
                        physics: const BouncingScrollPhysics(),
                        itemCount: imageList.length,
                        crossAxisCount: 2,
                        mainAxisSpacing: 4,
                        crossAxisSpacing: 4,
                        itemBuilder: (context, index) {
                          return index.isEven
                              ? Tile1(
                            index: index,
                            extent: 2,
                          )
                              : Tile2(
                            index: index,
                            extent: (index * 2),

                          );
                        },
                      ),

                    ],
                  ),
                ),
                Container(
                  child: controller.bottomNavigationBar(),
                )

              ],
            ));
      },
    );
  }

  Widget Tile1(
      {required int index, required int extent,}) {
    return Column(
      children: [
        Container(
          width: 600,
          height: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(imageList[index],),
                fit: BoxFit.cover,
              )),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            SizedBox(width: 0,),
            Text(
              'Easy DIY Dog tent perfect\nfor your fluffy BFF',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
            ),
            Icon(
              Icons.more_horiz,
              size: 30,
              color: Colors.black,
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Widget Tile2(
      {required int index, required int extent,}) {
    return Column(
      children: [
        Container(
          width: 600,
          height: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage(imageList[index],),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 30,
              width: 30,
              margin: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/avatar3.png'),
                    fit: BoxFit.cover,
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 5, left: 5),
              child: Icon(
                Icons.more_horiz,
                size: 30,
                color: Colors.black,
              ),
            )
          ],
        ),
      ],
    );
  }


  Widget _tapBarNavigatorView(){
     return  Expanded(
       child: Container(
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
                 "For you",
                 style: TextStyle(
                     fontSize: 12,
                     fontWeight: FontWeight.w500,
                     color: Colors.white),
               )
                   : const Text(
                 "For you",
                 style: TextStyle(
                     fontSize: 12,
                     fontWeight: FontWeight.w500,
                     color: Colors.black),
               )),
         ),
       ),
     );
  }
}

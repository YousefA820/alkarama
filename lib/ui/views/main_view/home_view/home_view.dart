import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';
import 'package:sp1_e_commerce/ui/views/main_view/home_view/home_controller.dart';
import 'package:sp1_e_commerce/ui/views/main_view/main_controller.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int x = 0;
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(218, 233, 232, 232),
      body: ListView(
        children: [
          Column(
            children: [
              CarouselSlider.builder(
                itemCount: 4,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Container(
                  width: screenWidth(1),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.blueColor),
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(
                        start: screenWidth(20), end: screenWidth(20)),
                    child: Column(
                      children: [
                        SizedBox(
                          width: screenWidth(1),
                          height: screenWidth(10),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "المباراة القادمة",
                                  style: TextStyle(color: AppColors.whiteColor),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: screenWidth(6),
                                      child: Image.network(
                                          'https://th.bing.com/th/id/OIP.avb9nDfw3kq7NOoP0grM4wHaEK?rs=1&pid=ImgDetMain'),
                                    ),
                                    Text(
                                      "VS",
                                      style: TextStyle(
                                          color: AppColors.whiteColor),
                                    ),
                                    SizedBox(
                                      width: screenWidth(6),
                                      child: Image.network(
                                          'https://th.bing.com/th/id/OIP.avb9nDfw3kq7NOoP0grM4wHaEK?rs=1&pid=ImgDetMain'),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              width: screenWidth(8),
                              child: Image.network(controller
                                  .productList[itemIndex].image
                                  .toString()),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                options: CarouselOptions(
                  height: 200,
                  aspectRatio: 16 / 9,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      x = index;
                    });
                  },
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  // onPageChanged: callbackFunction,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              DotsIndicator(
                dotsCount: 4,
                position: x,
                decorator: DotsDecorator(
                  size: const Size.square(9.0),
                  activeSize: const Size(18.0, 9.0),
                  activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

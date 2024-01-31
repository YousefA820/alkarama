import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:sp1_e_commerce/ui/shared/colors.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class MainNewsView extends StatefulWidget {
  const MainNewsView({super.key});

  @override
  State<MainNewsView> createState() => _MainNewsViewState();
}

class _MainNewsViewState extends State<MainNewsView> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Stack(
          children: [
            SizedBox(
              height: 225,
              child: CarouselSlider.builder(
                itemCount: 3,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Container(
                  width: screenWidth(1),
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 97, 148, 30)),
                ),
                options: CarouselOptions(
                  height: 220,
                  aspectRatio: 16,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      x = index;
                    });
                  },
                  disableCenter: true,
                  reverse: true,
                  autoPlay: true,
                  autoPlayCurve: Curves.linear,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 600),
                  enlargeCenterPage: true,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            DotsIndicator(
              reversed: true,
              dotsCount: 5,
              position: x,
              decorator: DotsDecorator(
                shape: CircleBorder(
                    side: BorderSide(width: 1, color: AppColors.whiteColor)),
                size: const Size.fromRadius(6),
                color: AppColors.blueColor,
                activeSize: const Size(12, 12),
                activeColor: AppColors.orangeColor,
                activeShape: CircleBorder(
                    side: BorderSide(width: 1, color: AppColors.whiteColor)),
              ),
            )
          ],
        )
      ],
    ));
  }
}

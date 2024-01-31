import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sp1_e_commerce/ui/shared/custom_widgets/custom_app_bar.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';
import 'package:sp1_e_commerce/ui/views/main_view/main_news_view/main_news_view.dart';

class NewsView extends StatefulWidget {
  const NewsView({super.key});

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            child: CustomAppBar(
              title: "صفحة الخبر",
            ),
            preferredSize: Size.fromHeight(75)),
        body: ListView(
          children: [
            InkWell(
              onTap: () {
                Get.to(MainNewsView());
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: screenWidth(1.12),
                  height: screenWidth(3),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(94, 149, 168, 207),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Container(
                        width: screenWidth(3),
                        height: screenWidth(3),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  "assets/images/pngs/Rectangle 109.png",
                                )),
                            color: Color.fromARGB(94, 44, 148, 30),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Container(
                        width: screenWidth(1.8),
                        height: screenWidth(3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "نادي الكرامة الرياضي نادي الكرامة الرياضي نادي الكرامة الرياضي نادي الكرامة الرياضي نادي الكرامة الريا",
                                style: TextStyle(fontSize: screenWidth(24)),
                                maxLines: 3,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: screenWidth(200)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.remove_red_eye_outlined,
                                        size: screenWidth(20),
                                      ),
                                      Text(
                                        " 300 ",
                                        style: TextStyle(
                                            fontSize: screenWidth(26)),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.watch_later_outlined,
                                        size: screenWidth(22),
                                      ),
                                      Text(
                                        " 4 ",
                                        style: TextStyle(
                                            fontSize: screenWidth(26)),
                                      ),
                                      Text(
                                        "أيام",
                                        style: TextStyle(
                                            fontSize: screenWidth(26)),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: screenWidth(1.12),
                height: screenWidth(3),
                decoration: BoxDecoration(
                    color: Color.fromARGB(94, 149, 168, 207),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Container(
                      width: screenWidth(3),
                      height: screenWidth(3),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                "assets/images/pngs/Rectangle 109.png",
                              )),
                          color: Color.fromARGB(94, 44, 148, 30),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      width: screenWidth(1.8),
                      height: screenWidth(2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "نادي الكرامة الرياضي نادي الكرامة الرياضي نادي الكرامة الرياضي نادي الكرامة الرياضي نادي الكرامة الريا",
                              style: TextStyle(fontSize: screenWidth(24)),
                              maxLines: 3,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                                top: screenWidth(200)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.remove_red_eye_outlined,
                                      size: screenWidth(20),
                                    ),
                                    Text(
                                      " 300 ",
                                      style:
                                          TextStyle(fontSize: screenWidth(26)),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.watch_later_outlined,
                                      size: screenWidth(22),
                                    ),
                                    Text(
                                      " 4 ",
                                      style:
                                          TextStyle(fontSize: screenWidth(26)),
                                    ),
                                    Text(
                                      "أيام",
                                      style:
                                          TextStyle(fontSize: screenWidth(26)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: screenWidth(1.12),
                height: screenWidth(3),
                decoration: BoxDecoration(
                    color: Color.fromARGB(94, 149, 168, 207),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Container(
                      width: screenWidth(3),
                      height: screenWidth(3),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                "assets/images/pngs/Rectangle 109.png",
                              )),
                          color: Color.fromARGB(94, 44, 148, 30),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      width: screenWidth(1.8),
                      height: screenWidth(3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "نادي الكرامة الرياضي نادي الكرامة الرياضي نادي الكرامة الرياضي نادي الكرامة الرياضي نادي الكرامة الريا",
                              style: TextStyle(fontSize: screenWidth(24)),
                              maxLines: 3,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                                top: screenWidth(200)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.remove_red_eye_outlined,
                                      size: screenWidth(20),
                                    ),
                                    Text(
                                      " 300 ",
                                      style:
                                          TextStyle(fontSize: screenWidth(26)),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.watch_later_outlined,
                                      size: screenWidth(22),
                                    ),
                                    Text(
                                      " 4 ",
                                      style:
                                          TextStyle(fontSize: screenWidth(26)),
                                    ),
                                    Text(
                                      "أيام",
                                      style:
                                          TextStyle(fontSize: screenWidth(26)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: screenWidth(1.12),
                height: screenWidth(3),
                decoration: BoxDecoration(
                    color: Color.fromARGB(94, 149, 168, 207),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Container(
                      width: screenWidth(3),
                      height: screenWidth(3),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                "assets/images/pngs/Rectangle 109.png",
                              )),
                          color: Color.fromARGB(94, 44, 148, 30),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Container(
                      width: screenWidth(1.8),
                      height: screenWidth(3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "نادي الكرامة الرياضي نادي الكرامة الرياضي نادي الكرامة الرياضي نادي الكرامة الرياضي نادي الكرامة الريا",
                              style: TextStyle(fontSize: screenWidth(24)),
                              maxLines: 3,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                                top: screenWidth(200)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.remove_red_eye_outlined,
                                      size: screenWidth(20),
                                    ),
                                    Text(
                                      " 300 ",
                                      style:
                                          TextStyle(fontSize: screenWidth(26)),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.watch_later_outlined,
                                      size: screenWidth(22),
                                    ),
                                    Text(
                                      " 4 ",
                                      style:
                                          TextStyle(fontSize: screenWidth(26)),
                                    ),
                                    Text(
                                      "أيام",
                                      style:
                                          TextStyle(fontSize: screenWidth(26)),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

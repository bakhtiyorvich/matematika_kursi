import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:matematika_kursi/config/resources/app_icons.dart';
import 'package:matematika_kursi/config/routes/route.dart';

import '../../../config/routes/route_path.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 52),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Text(
                          "Salom Hafiz ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Icon(
                          Icons.waving_hand,
                          color: Color(0xFFFFD45E),
                          size: 16,
                        )
                      ]),
                      Row(
                        children: [
                          Text(
                            "O'zingga mos",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " Kursni",
                            style: TextStyle(
                                color: Color(0xFF2EC4B6),
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            " top!",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          )
                        ],
                      )
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      context.router.replaceNamed(RoutePath.notification);
                    },
                    child: Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Color(0xFFF4F4F4),
                          )),
                      child: Center(
                        child: Stack(children: [
                          SvgPicture.asset(
                            AppIcons.notification,
                            colorFilter: ColorFilter.mode(
                                Color(0xFF697B7A), BlendMode.srcIn),
                            height: 24,
                            width: 24,
                          ),
                          Positioned(
                              top: 3,
                              left: 14,
                              child: Container(
                                height: 8,
                                width: 8,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.white),
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(16)),
                              ))
                        ]),
                      ),
                    ),
                  )
                ]),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 32),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 14.0,
                    horizontal: 14.0,
                  ),
                  hintText: 'Qidirish',
                  hintStyle: TextStyle(fontSize: 12, color: Color(0xFF697B7A)),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: SvgPicture.asset(
                      AppIcons.search,
                      height: 24,
                      width: 24,
                    ),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: SvgPicture.asset(
                        AppIcons.filter,
                        height: 24,
                        width: 24,
                      ),
                    ),
                  ),
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFF4F4F4)),
                      borderRadius: BorderRadius.circular(16)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              GestureDetector(
                onTap: () {
                  context.router.replaceNamed(RoutePath.course);
                },
                child: getCourses(
                    image: "assets/png/toplam.png",
                    text1: 'DTM 2022',
                    text2:
                        "Siz Sardorxon Urfonxonovning \"DTM 2022\" kursini sotib oldingiz",
                    text3: "152 000 so'm",
                    text4: "200 000 so'm",
                    text5: '4.8',
                    text6: "(234)"),
              ),
              SizedBox(
                height: 32,
              ),
              GestureDetector(
                onTap: () {
                  context.router.replaceNamed(RoutePath.course);
                },
                child: getCourses(
                    image: "assets/png/yechim.png",
                    text1: 'DTM 2022 Matematika 8-Avgust Savollari',
                    text2: "Sardorxon Urfonxonov",
                    text3: "52 000 so'm",
                    text4: "100 000 so'm",
                    text5: '4.8',
                    text6: "(114)"),
              ),
              SizedBox(
                height: 32,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getCourses({
    required String image,
    required String text1,
    required String text2,
    required String text3,
    required String text4,
    required String text5,
    required String text6,
  }) =>
      Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 0,
              blurRadius: 20,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(image),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text1,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      text2,
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Text(
                          text3,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF2EC4B6)),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          text4,
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.lineThrough),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Text(
                          text5,
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xFFFFBF69),
                          size: 12,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xFFFFBF69),
                          size: 12,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xFFFFBF69),
                          size: 12,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xFFFFBF69),
                          size: 12,
                        ),
                        Icon(
                          Icons.star,
                          color: Color(0xFFFFBF69),
                          size: 12,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          text6,
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ]),
            ),
            SizedBox(
              height: 16,
            )
          ],
        ),
      );
}

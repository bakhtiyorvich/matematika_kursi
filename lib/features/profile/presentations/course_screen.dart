import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:matematika_kursi/config/resources/app_icons.dart';

@RoutePage()
class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            Image.asset("assets/png/dtm.png"),
            Positioned(
                left: 24, top: 52, child: SvgPicture.asset(AppIcons.down)),
            Positioned(
                right: 24,
                top: 52,
                child: Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.white,
                )),
            Positioned(
                right: 54,
                top: 52,
                child: SvgPicture.asset(
                  AppIcons.more,
                  colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ))
          ]),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    "DTM 2022",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Sardorxon Urfonxonov",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF697B7A)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Text(
                        "4.8",
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
                        "(534)",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

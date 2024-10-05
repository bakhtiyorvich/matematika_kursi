import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:matematika_kursi/config/resources/app_icons.dart';
import 'package:matematika_kursi/widgets/w_icons.dart';

@RoutePage()
class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
                  Row(
                    children: [
                      WIcons(icon: AppIcons.left),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "Xabarlar",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  WIcons(icon: AppIcons.more),
                ],
              ),
            ),
          )),
      // body: Center(
      //   child: Column(children: [
      //     SizedBox(
      //       height: 48,
      //     ),
      //     SvgPicture.asset("assets/svg/notif.svg"),
      //     SizedBox(
      //       height: 24,
      //     ),
      //     Text(
      //       "Hali habarnoma yo'q!",
      //       style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
      //     ),
      //     SizedBox(
      //       height: 12,
      //     ),
      //     Text(
      //       "Har qanday xabarnoma shu yerda paydo bo'ladi",
      //       style: TextStyle(
      //           fontSize: 14,
      //           fontWeight: FontWeight.w400,
      //           color: Color(0xFF697B7A)),
      //     )
      //   ]),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 48,
              ),
              Text(
                "Bugun",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 16,
              ),
              getNotificarions(
                  icon: AppIcons.percent,
                  title: "Promo 20% “DTM 2022” kursi uchun",
                  description:
                      "DTM 2022” kursining 20% promosiga ega bo‘ling va uni o‘tkazib yubormang",
                  time: "8:00"),
              getNotificarions(
                  icon: AppIcons.cart,
                  title: "Sotuv amalga oshirildi!",
                  description:
                      "Siz Sardorxon Urfonxonovning “DTM 2022” kursini sotib oldingiz.",
                  time: "7:30"),
              SizedBox(
                height: 16,
              ),
              Text(
                "Kecha",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 16,
              ),
              getNotificarions(
                  icon: AppIcons.book,
                  title: "Kurs tugallandi!",
                  description:
                      "“DTM 2021” kursini tugatdingiz, endilikda ushbu kurs uchun baho va fikringizni yozib qoldiring",
                  time: "3:00"),
              getNotificarions(
                  icon: AppIcons.percent,
                  title: "Barcha kurslar uchun Promo 10%!",
                  description:
                      "Barcha kurlar uchun Promo 10% ni qo’ldan boy bermang.",
                  time: "14:00"),
              getNotificarions(
                  icon: AppIcons.cart,
                  title: "Sotuv amalga oshirildi!",
                  description:
                      "Siz Sardorxon Urfonxonovning “DTM 2021” kursini sotib oldingiz.",
                  time: "14:00")
            ],
          ),
        ),
      ),
    );
  }

  Widget getNotificarions({
    required String icon,
    required String title,
    required String description,
    required String time,
  }) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: Color(0xFFD5F3F0),
                  borderRadius: BorderRadius.circular(25)),
              child: Center(
                child: SvgPicture.asset(icon),
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(height: 6.0),
                  Text(
                    description,
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                  SizedBox(height: 6.0),
                  Text(
                    time,
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

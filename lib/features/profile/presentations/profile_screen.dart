import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/resources/app_icons.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Image.asset("assets/png/background.png"),
              Positioned(
                  left: 32,
                  top: 52,
                  child: Text(
                    "Mening profilim",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )),
              Positioned(
                  right: 32,
                  top: 44,
                  child: Container(
                    height: 42,
                    width: 42,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: Colors.white,
                        )),
                    child: Center(
                      child: SvgPicture.asset(
                        AppIcons.more,
                        colorFilter:
                            ColorFilter.mode(Colors.white, BlendMode.srcIn),
                        height: 24,
                        width: 24,
                      ),
                    ),
                  )),
              Positioned(
                right: 0,
                bottom: 40,
                left: 0,
                child: Center(
                  child: Image.asset(
                    "assets/png/owner.png",
                    height: 164,
                    width: 164,
                  ),
                ),
              ),
              Positioned(
                  bottom: 64,
                  left: 124,
                  child: Text(
                    "Sardorxon Urfonxonov",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )),
              Positioned(
                  bottom: 44,
                  left: 102,
                  child: Text(
                    "sardorxonurfonxonov@gmail.com",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.white),
                  ))
            ]),
            SizedBox(
              height: 48,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Umumiy",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  manageAccaunt(
                      icon: AppIcons.owneruser, text: "Shaxsiy ma'lumotlar"),
                  SizedBox(
                    height: 24,
                  ),
                  manageAccaunt(icon: AppIcons.privacy, text: "Xavfsizlik"),
                  SizedBox(
                    height: 32,
                  ),
                  Text(
                    "Boshqa",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  manageAccaunt(icon: AppIcons.settings, text: "Sozlamalar")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  manageAccaunt({required String icon, required String text}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Color(0xFFFBFBFA),
                  )),
              child: Center(
                child: SvgPicture.asset(
                  icon,
                  height: 24,
                  width: 24,
                ),
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        SvgPicture.asset(AppIcons.right)
      ],
    );
  }
}

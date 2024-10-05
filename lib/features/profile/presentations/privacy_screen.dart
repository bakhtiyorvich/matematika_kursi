import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config/resources/app_icons.dart';
import '../../../widgets/w_icons.dart';

@RoutePage()
class PrivacyScreen extends StatefulWidget {
  const PrivacyScreen({super.key});

  @override
  State<PrivacyScreen> createState() => _PrivacyScreenState();
}

class _PrivacyScreenState extends State<PrivacyScreen> {
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
                        "Shaxsiy ma'lumotlar",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SvgPicture.asset(AppIcons.check),
                ],
              ),
            ),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 48,
              ),
              Center(
                child: Stack(children: [
                  Image.asset(
                    "assets/png/foydalanuvchi.png",
                    height: 164,
                    width: 164,
                  ),
                  Positioned(
                      bottom: 62,
                      right: 44,
                      child: Container(
                        height: 27,
                        width: 27,
                        decoration: BoxDecoration(
                            color: Color(0xFFD2F0ED),
                            border: Border.all(width: 1, color: Colors.white),
                            borderRadius: BorderRadius.circular(13)),
                        child: Padding(
                            padding: EdgeInsets.all(4),
                            child: SvgPicture.asset(AppIcons.camera)),
                      ))
                ]),
              ),
              Text(
                "To'liq ism",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 14.0,
                    horizontal: 14.0,
                  ),
                  hintText: "To'liq ism",
                  hintStyle: TextStyle(fontSize: 12, color: Color(0xFF697B7A)),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: SvgPicture.asset(
                      AppIcons.user,
                      height: 24,
                      width: 24,
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
                height: 32,
              ),
              Text(
                "Email",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 14.0,
                    horizontal: 14.0,
                  ),
                  hintText: "Email",
                  hintStyle: TextStyle(fontSize: 12, color: Color(0xFF697B7A)),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: SvgPicture.asset(
                      AppIcons.gmail,
                      height: 24,
                      width: 24,
                    ),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: SvgPicture.asset(
                      AppIcons.truth,
                      height: 24,
                      width: 24,
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
                height: 32,
              ),
              Text(
                "Telefon raqam",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 14.0,
                    horizontal: 14.0,
                  ),
                  hintText: "Telefon raqam",
                  hintStyle: TextStyle(fontSize: 12, color: Color(0xFF697B7A)),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: SvgPicture.asset(
                      AppIcons.phone,
                      height: 24,
                      width: 24,
                    ),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: SvgPicture.asset(
                      AppIcons.truth,
                      height: 24,
                      width: 24,
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
                height: 32,
              ),
              Text(
                "Manzil",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 14.0,
                    horizontal: 14.0,
                  ),
                  hintText: "Manzil",
                  hintStyle: TextStyle(fontSize: 12, color: Color(0xFF697B7A)),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: SvgPicture.asset(
                      AppIcons.map,
                      height: 24,
                      width: 24,
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
                height: 32,
              ),
              Text(
                "Tug'ilgan sana",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 8,
              ),
              TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 14.0,
                    horizontal: 14.0,
                  ),
                  hintText: "Tug'ilgan sana",
                  hintStyle: TextStyle(fontSize: 12, color: Color(0xFF697B7A)),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: SvgPicture.asset(
                      AppIcons.date,
                      height: 24,
                      width: 24,
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
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

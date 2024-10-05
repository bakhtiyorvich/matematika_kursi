import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:matematika_kursi/config/resources/app_icons.dart';
import 'package:matematika_kursi/widgets/w_button.dart';
import 'package:matematika_kursi/widgets/w_icons.dart';

@RoutePage()
class ChangeParolScreen extends StatefulWidget {
  const ChangeParolScreen({super.key});

  @override
  State<ChangeParolScreen> createState() => _ChangeParolScreenState();
}

class _ChangeParolScreenState extends State<ChangeParolScreen> {
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
                        "Parolni o'zgartirish",
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 48,
            ),
            Text(
              "Hozirgi parol",
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
                hintText: 'Hozirgi parol',
                hintStyle: TextStyle(fontSize: 12, color: Color(0xFF697B7A)),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: SvgPicture.asset(
                    AppIcons.lock,
                    height: 24,
                    width: 24,
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: SvgPicture.asset(
                    AppIcons.hide,
                    height: 24,
                    width: 24,
                  ),
                ),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFF4F4F4)),
                    borderRadius: BorderRadius.circular(16)),
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              "Yangi parol",
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
                hintText: 'Yangi parol',
                hintStyle: TextStyle(fontSize: 12, color: Color(0xFF697B7A)),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: SvgPicture.asset(
                    AppIcons.lock,
                    height: 24,
                    width: 24,
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: SvgPicture.asset(
                    AppIcons.hide,
                    height: 24,
                    width: 24,
                  ),
                ),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFF4F4F4)),
                    borderRadius: BorderRadius.circular(16)),
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              "Yangi parolni tasdiqlang",
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
                hintText: 'Parolmi tasdiqlang',
                hintStyle: TextStyle(fontSize: 12, color: Color(0xFF697B7A)),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: SvgPicture.asset(
                    AppIcons.lock,
                    height: 24,
                    width: 24,
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: SvgPicture.asset(
                    AppIcons.hide,
                    height: 24,
                    width: 24,
                  ),
                ),
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFF4F4F4)),
                    borderRadius: BorderRadius.circular(16)),
                focusedBorder:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
              ),
            ),
            Spacer(),
            WButton(text: "Yangi parolni saqlash"),
            SizedBox(
              height: 28,
            )
          ],
        ),
      ),
    );
  }
}

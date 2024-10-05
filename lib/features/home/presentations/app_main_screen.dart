import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:matematika_kursi/config/routes/route.dart';

import '../../../config/resources/app_icons.dart';

@RoutePage()
class AppMainScreen extends StatefulWidget {
  const AppMainScreen({super.key});

  @override
  State<AppMainScreen> createState() => _AppMainScreenState();
}

class _AppMainScreenState extends State<AppMainScreen> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        HomeRoute(),
        LessonsRoute(),
        ChatRoute(),
        ProfileRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: Container(
            constraints: BoxConstraints(minHeight: 72),
            width: double.infinity,
            decoration: BoxDecoration(color: Colors.white),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _getIcon(
                    icon: AppIcons.home,
                    isActive: tabsRouter.activeIndex == 0,
                    onTap: () {
                      tabsRouter.setActiveIndex(0);
                    }),
                _getIcon(
                    icon: AppIcons.videos,
                    isActive: tabsRouter.activeIndex == 1,
                    onTap: () {
                      tabsRouter.setActiveIndex(1);
                    }),
                _getIcon(
                    icon: AppIcons.chat,
                    isActive: tabsRouter.activeIndex == 2,
                    onTap: () {
                      tabsRouter.setActiveIndex(2);
                    }),
                _getIcon(
                    icon: AppIcons.user,
                    isActive: tabsRouter.activeIndex == 3,
                    onTap: () {
                      tabsRouter.setActiveIndex(3);
                    }),
              ],
            ),
          ),
        );
      },
    );
  }

  _getIcon(
          {required String icon,
          bool isActive = false,
          required GestureTapCallback onTap}) =>
      GestureDetector(
        onTap: onTap,
        child: Container(
          // width: 24,
          // height: 24,
          // decoration: BoxDecoration(
          //   color: isActive ? Color(0xFF2EC4B6) : Colors.white,
          // ),
          child: SvgPicture.asset(
            icon,
            colorFilter: ColorFilter.mode(
                isActive ? Color(0xFF2EC4B6) : Color(0xFF697B7A),
                BlendMode.srcIn),
          ),
        ),
      );
}

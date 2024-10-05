import 'package:flutter/material.dart';
import 'package:matematika_kursi/features/profile/presentations/change_parol_screen.dart';
import 'package:matematika_kursi/features/profile/presentations/course_screen.dart';
import 'package:matematika_kursi/features/profile/presentations/notification_screen.dart';
import 'package:matematika_kursi/features/profile/presentations/profile_screen.dart';

import 'config/resources/app_theme.dart';
import 'config/routes/route.dart';
import 'features/home/presentations/home_screen.dart';

void main() {
  runApp(const MyApp());
}

final _appRouter = AppRouter();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.defaultTheme,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routerConfig: _appRouter.config(),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:matematika_kursi/config/routes/route_path.dart';

import '../../features/chat/presentation/chat_screen.dart';
import '../../features/home/presentations/app_main_screen.dart';
import '../../features/home/presentations/home_screen.dart';
import '../../features/profile/presentations/change_parol_screen.dart';
import '../../features/profile/presentations/course_screen.dart';
import '../../features/profile/presentations/notification_screen.dart';
import '../../features/profile/presentations/privacy_screen.dart';
import '../../features/profile/presentations/profile_screen.dart';
import '../../features/videoLessons/presentation/lessons_screen.dart';

part 'route.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: ChangeParolRoute.page, path: RoutePath.changeParol),
        AutoRoute(page: CourseRoute.page, path: RoutePath.course),
        AutoRoute(page: NotificationRoute.page, path: RoutePath.notification),
        AutoRoute(page: PrivacyRoute.page, path: RoutePath.privacy),
        AutoRoute(
            page: AppMainRoute.page,
            path: RoutePath.main,
            initial: true,
            children: [
              AutoRoute(
                page: HomeRoute.page,
                path: RoutePath.home,
              ),
              AutoRoute(page: ProfileRoute.page, path: RoutePath.profile),
              AutoRoute(page: ChatRoute.page, path: RoutePath.chat),
              AutoRoute(page: LessonsRoute.page, path: RoutePath.lessons),
            ]),
      ];
}

import 'package:basic_requirements_package/core/init/cache/onboarding/intro_caching.dart';
import 'package:basic_requirements_package/view/_product/enum/route_enum.dart';
import 'package:basic_requirements_package/view/home/view/home_page.dart';
import 'package:basic_requirements_package/view/introduction/view/introduction_screen.dart';
import 'package:basic_requirements_package/view/login/view/login_screen.dart';
import 'package:basic_requirements_package/view/settings/view/setting_view.dart';
import 'package:go_router/go_router.dart';

class NavigationRouters {
  const NavigationRouters._();

  static final GoRouter router = GoRouter(
    initialLocation: IntroCaching.initialIntro(),
    routes: [
      GoRoute(
        path: RouteEnum.loginPage.rawValue,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: RouteEnum.homePage.rawValue,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: RouteEnum.intro.rawValue,
        builder: (context, state) => Introduction.intro,
      ),
      GoRoute(
        path: RouteEnum.setting.rawValue,
        builder: (context, state) => const SettingView(),
      ),
    ],
  );
}

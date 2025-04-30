enum RouteEnum {
  intro,
  setting,
  homePage,
  loginPage,
}

extension RouteEnumString on RouteEnum {
  String get rawValue {
    switch (this) {
      case RouteEnum.intro:
        return '/intro';
      case RouteEnum.setting:
        return '/setting';
      case RouteEnum.homePage:
        return '/home';
      case RouteEnum.loginPage:
        return '/login';
    }
  }
}

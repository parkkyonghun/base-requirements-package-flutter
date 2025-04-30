import 'package:basic_requirements_package/core/init/cubit/theme_cubit.dart';
import 'package:basic_requirements_package/core/init/navigation/navigation_route.dart';
import 'package:basic_requirements_package/core/init/theme/dark/dark_theme_custom.dart';
import 'package:basic_requirements_package/core/init/theme/light/light_theme_custom.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, themeState) {
        return ScreenUtilInit(
          designSize: const Size(375, 812),
          builder: (context, child) {
           return  MaterialApp.router(
             localizationsDelegates: context.localizationDelegates,
             supportedLocales: context.supportedLocales,
             locale: context.locale,
             theme: LightThemeCustom().theme,
             darkTheme: DarkThemeCustom().theme,
             themeMode: themeState,
             routerConfig: NavigationRoute.router,
             debugShowCheckedModeBanner: false,
           );
          }
        );
      },
    );
  }
}

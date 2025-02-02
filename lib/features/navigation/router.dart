import 'package:flutter/cupertino.dart';
import 'package:glovo_assign1/features/corousel/corousel_screen.dart';
import 'package:glovo_assign1/features/mini_project/pages/light_mode_page.dart';
import 'package:glovo_assign1/features/mini_project/pages/result_page.dart';
import 'package:glovo_assign1/features/navigation/route_strings.dart';
import 'package:glovo_assign1/features/pages/sign_up_screen.dart';
import 'package:glovo_assign1/features/tabbar_view/tab_bar_screen.dart';
import 'package:glovo_assign1/features/user_input/user_input_screen.dart';

import '../pageview/page_view.dart';

Route<dynamic> appRouter(RouteSettings settings) {
  switch (settings.name) {
    case AppRouteStrings.base:
      return CupertinoPageRoute(builder: (_) => const UserInputScreen());
    case AppRouteStrings.carouselScreen:
      return CupertinoPageRoute(builder: (_) => const CarouselScreen());
    case AppRouteStrings.resultScreen:
      return CupertinoPageRoute(builder: (_) => const ResultPage());
    case AppRouteStrings.signUpScreen:
      return CupertinoPageRoute(builder: (_) => const SignUpScreen());
    case AppRouteStrings.pageViewScreen:
      return CupertinoPageRoute(builder: (_) => const PageViewScreen());
    case AppRouteStrings.tabBarViewScreen:
      return CupertinoPageRoute(builder: (_) => const TabBarScreen());
    case AppRouteStrings.userInputScreen:
      return CupertinoPageRoute(builder: (_) => const UserInputScreen());

    default:
      return CupertinoPageRoute(builder: (_) => const LightModePage());
  }
}

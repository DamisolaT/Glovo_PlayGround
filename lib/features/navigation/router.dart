import 'package:flutter/cupertino.dart';
import 'package:glovo_assign1/features/corousel/corousel_screen.dart';
import 'package:glovo_assign1/features/mini_project/pages/light_mode_page.dart';
import 'package:glovo_assign1/features/mini_project/pages/result_page.dart';
import 'package:glovo_assign1/features/navigation/route_strings.dart';
import 'package:glovo_assign1/features/pages/sign_up_screen.dart';

import '../pageview/page_view.dart';

Route<dynamic> appRouter(RouteSettings settings) {
  switch (settings.name) {
    case AppRouteStrings.base:
      return CupertinoPageRoute(builder: (_) => const LightModePage());
    case AppRouteStrings.carouselScreen:
      return CupertinoPageRoute(builder: (_) => const CarouselScreen());
    case AppRouteStrings.resultScreen:
      return CupertinoPageRoute(builder: (_) => const ResultPage());
    case AppRouteStrings.signUpScreen:
      return CupertinoPageRoute(builder: (_) => const SignUpScreen());
    case AppRouteStrings.pageViewScreen:
      return CupertinoPageRoute(builder: (_) => const PageViewScreen());

    default:
      return CupertinoPageRoute(builder: (_) => const LightModePage());
  }
}

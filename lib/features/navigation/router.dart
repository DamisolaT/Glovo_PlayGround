import 'package:flutter/cupertino.dart';
import 'package:glovo_assign1/features/navigation/route_strings.dart';
import 'package:glovo_assign1/features/pages/login_screen.dart';
import 'package:glovo_assign1/features/pages/sign_up_screen.dart';
import 'package:glovo_assign1/features/pages/welcome_screen.dart';

Route<dynamic> appRouter(RouteSettings settings) {
  switch (settings.name) {
    case AppRouteStrings.base:
      return CupertinoPageRoute(builder: (_) => const WelcomeScreen());
    case AppRouteStrings.loginScreen:
      return CupertinoPageRoute(builder: (_) => const LoginScreen());
    case AppRouteStrings.signUpScreen:
      return CupertinoPageRoute(builder: (_) => const SignUpScreen());

    default:
      return CupertinoPageRoute(builder: (_) => const WelcomeScreen());
  }
}

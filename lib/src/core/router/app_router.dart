import 'package:flutter/material.dart';
import 'package:flutter_exam_4_serious/src/features/auth/screens/sign_up_screen.dart';
import 'package:flutter_exam_4_serious/src/features/home/models/Home_model.dart';
import 'package:flutter_exam_4_serious/src/features/home/screens/detail_screen.dart';
import 'package:flutter_exam_4_serious/src/features/home/screens/home_screen.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppPages.home:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case AppPages.signup:
        return MaterialPageRoute(builder: (context) => SignUpScreen());
      case AppPages.detail:
        return MaterialPageRoute(
          builder: (context) =>
              DetailScreen(articles: settings.arguments as Article),
        );
      default:
        return null;
    }
  }
}

class AppPages {
  static const String home = '/home';
  static const String signup = '/signup';
  static const String detail = '/detail';
}

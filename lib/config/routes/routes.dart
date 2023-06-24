import 'package:exam/features/categories/precentation/pages/categories_page.dart';
import 'package:flutter/material.dart';

import '../../features/home/presentation/pages/home_page.dart';

class Routes {
  
  static const homePage = '/homePage';
  static const categoriesPage = '/';

  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    try {
      final Map<String, dynamic>? args =
          routeSettings.arguments as Map<String, dynamic>?;
      args ?? <String, dynamic>{};
      switch (routeSettings.name) {
       
        case homePage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const HomePage(),
          );
       case categoriesPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const CategoriesPage(),
          );
       
        default:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const HomePage(),
          );
      }
    } catch (e) {
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomePage(),
      );
    }
  }
}

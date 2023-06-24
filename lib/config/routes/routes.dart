import 'package:exam/features/categories/precentation/pages/categories_page.dart';
import 'package:exam/features/others/presentation/pages/others_page.dart';
import 'package:exam/features/ticket/presentation/pages/ticket_page.dart';
import 'package:flutter/material.dart';

import '../../features/home/presentation/pages/home_page.dart';

class Routes {
  
  static const homePage = '/homePage';
  static const categoriesPage = '/categoriesPage';
  static const othersPage = '/othersPage';
  static const ticketPage = '/';

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
       case othersPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const OthersPage(),
          );
       case ticketPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const TicketPage(),
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

import 'package:exam/features/categories/precentation/pages/categories_page.dart';
import 'package:exam/features/fines/presentation/pages/fines_page.dart';
import 'package:exam/features/news/presentation/pages/news_more_info_page.dart';
import 'package:exam/features/news/presentation/pages/news_page.dart';
import 'package:exam/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:exam/features/others/presentation/pages/others_page.dart';
import 'package:exam/features/road_sings/presentation/pages/road_signs_info_page.dart';
import 'package:exam/features/road_sings/presentation/pages/road_signs_page.dart';
import 'package:exam/features/statistics/presentation/pages/statistics_page.dart';
import 'package:exam/features/ticket/presentation/pages/ticket_page.dart';
import 'package:flutter/material.dart';

import '../../features/home/presentation/pages/home_page.dart';

class Routes {
  static const homePage = '/homePage';
  static const categoriesPage = '/categoriesPage';
  static const othersPage = '/othersPage';
  static const ticketPage = '/ticketPage';
  static const newsPage = '/newsPage';
  static const newsMoreInfoPage = '/newsMoreInfoPage';
  static const statisticsPage = '/statisticsPage';
  static const roadSignsPage = '/roadSignsPage';
  static const roadSignsInfoPage = '/roadSignsInfoPage';
  static const finesPage = '/finesPage';
  static const onboardingPage = '/';

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
        case newsPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const NewsPage(),
          );
        case newsMoreInfoPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => NewsMoreInfoPage(newsModel: args!["newsModel"]),
          );
        case statisticsPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const StatisticsPage(),
          );
        case roadSignsPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const RoadSignsPage(),
          );
        case roadSignsInfoPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const RoadSignsInfoPage(),
          );
        case finesPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const FinesPage(),
          );
        case onboardingPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const OnboardingPage(),
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

import 'package:dhaga_flutter/common_all/widgets/demo.dart';
import 'package:dhaga_flutter/common_all/widgets/template.dart';
import 'package:dhaga_flutter/settings/layout.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const landingPage = '/';
  static const homeScreen = '/home';
  static const settings = '/settings';

  static const template = '/template';
  static const demo = '/demo';
  static const test = '/test';

}

class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case AppRoutes.settings:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SettingsMainPage(),
          settings: settings,
          fullscreenDialog: true,
        );
      case AppRoutes.template:
        return MaterialPageRoute<dynamic>(
          builder: (_) => TemplateClass(),
          settings: settings,
          fullscreenDialog: true,
        );
      case AppRoutes.demo:
        return MaterialPageRoute<dynamic>(
          builder: (_) => DemoClass(),
          settings: settings,
          fullscreenDialog: true,
        );
      default:
      // TODO: Throw
        return null;
    }
  }
}
// DispatchTableMainPage
/*
Call AppRoutes.pageName whenever needed

Example scenario in case of arguments passing
case AppRoutes.listingCategorySearch:
        Map<String, dynamic> args = settings.arguments;
        return MaterialPageRoute<dynamic>(
          builder: (_) => ListingCategorySearchView(queryParams: args,),
          settings: settings,
          fullscreenDialog: true,
        );
case AppRoutes.listingDetails:
        ListingDetailsArgs args = settings.arguments;
        return MaterialPageRoute<dynamic>(
          builder: (_) => ListingDetailsPage(offerID: args.offerID, favouriteCount: args.favouriteCount, commentCount: args.commentCount, dealCount: args.dealCount,viewCount: args.viewCount, isLoadingFromOfferCreateScreen: args.isLoadingFromOfferCreateScreen,),
          settings: settings,
          fullscreenDialog: true,
        );
 */
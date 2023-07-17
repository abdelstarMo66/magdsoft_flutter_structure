import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/data/models/product_model.dart';
import 'package:magdsoft_flutter_structure/presentation/router/animated_route.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/home/widgets/product_details.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/verify/verify_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/login/login_screen.dart';
import '../screens/shared/splash_screen.dart';
import '../view/help_view.dart';
import 'routes.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return SlideRight(page: const SplashScreen());
      case Routes.loginRoute:
        return SlideRight(page: const LoginScreen());
      case Routes.verifyRoute:
        return SlideRight(
          page: VerifyScreen(phoneNumber: settings.arguments as String),
        );
      case Routes.homeRoute:
        return SlideRight(page: const HomeScreen());
      case Routes.productDetailsRoute:
        return SlideRight(
            page: ProductDetailsScreen(
          productData: settings.arguments as Products,
        ));
      case Routes.helpRoute:
        return SlideRight(page: const HelpView());
      default:
        return null;
    }
  }
}

import 'package:flutter/material.dart';
import 'package:e_bidhaa/models/models.dart';

import '../screens/screens.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    debugPrint('This is route: ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomePage.route();
      case '/cart':
        return CartPage.route();

      case '/catalog':
        return CatalogPage.route(category: settings.arguments as Category);

      case '/product':
        return ProductPage.route(product: settings.arguments as Product);

      case '/wishlist':
        return WishlistPage.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: "/error"),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:e_bidhaa/widgets/widgets.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const WishlistPage());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBarWidget(title: 'Wishlist'),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}

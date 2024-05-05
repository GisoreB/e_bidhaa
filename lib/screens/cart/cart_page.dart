import 'package:flutter/material.dart';
import 'package:e_bidhaa/widgets/widgets.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  static const String routeName = '/cart';

  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: routeName),
        builder: (_) => const CartPage());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBarWidget(title: 'Cart'),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:e_bidhaa/models/models.dart';
import 'package:e_bidhaa/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBarWidget(title: 'E-Bidhaa'),
      bottomNavigationBar: const CustomNavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 1.5,
                viewportFraction: 0.9,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
              items: Category.categories
                  .map((category) => HeroCarouselcard(category: category))
                  .toList(),
            ),
            const SectionTitle(title: 'RECOMMENDED'),
        
            /// [ Product Carousel ]
            ProductCarousel(
              products: Product.products
                  .where((product) => product.isRecommended)
                  .toList(),
            ),
            const SectionTitle(title: 'MOST POPULAR'),
        
            /// [ Product Carousel ]
            ProductCarousel(
              products:
                  Product.products.where((product) => product.isPopular).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

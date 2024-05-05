import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final double price;
  final String imageUrl;
  final bool isPopular;
  final bool isRecommended;

  const Product({
    required this.name,
    required this.category,
    required this.price,
    required this.imageUrl,
    required this.isPopular,
    required this.isRecommended,
  });

  @override
  List<Object?> get props => [
        name,
        category,
        price,
        imageUrl,
        isPopular,
        isRecommended,
      ];

  static List<Product> products = [
    const Product(
      name: 'Soft Drink#1',
      category: 'Soft Drinks',
      imageUrl:
          'https://images.unsplash.com/photo-1630979805425-08f5f5f39aff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHNvZnQlMjBkcmlua3N8ZW58MHx8MHx8&w=1000&q=80',
      price: 250,
      isPopular: true,
      isRecommended: true,
    ),
    const Product(
      name: 'Soft Drink#2',
      category: 'Soft Drinks',
      imageUrl:
          'https://images.unsplash.com/photo-1579630942078-100a2f8e9052?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHNvZnQlMjBkcmlua3N8ZW58MHx8MHx8&w=1000&q=80',
      price: 300,
      isPopular: false,
      isRecommended: true,
    ),
    const Product(
      name: 'Soft Drink#3',
      category: 'Soft Drinks',
      imageUrl:
          'https://images.unsplash.com/photo-1625740822008-e45abf4e01d5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8c29mdCUyMGRyaW5rc3xlbnwwfHwwfHw%3D&w=1000&q=80',
      price: 200,
      isPopular: true,
      isRecommended: false,
    ),
    const Product(
      name: 'Smoothies#1',
      category: 'Smoothies',
      imageUrl:
          'https://media.istockphoto.com/photos/healthy-appetizing-red-smoothie-dessert-in-glasses-picture-id1081369140?b=1&k=20&m=1081369140&s=170667a&w=0&h=Kqly279mYHdhlICyhSOfCFM3skj9V66IZMgzPidBtEc=',
      price: 200,
      isPopular: true,
      isRecommended: true,
    ),
    const Product(
      name: 'Smoothies#2',
      category: 'Smoothies',
      imageUrl:
          'https://media.istockphoto.com/photos/berry-smoothie-picture-id1239923343?b=1&k=20&m=1239923343&s=170667a&w=0&h=vDL8aJFi6D-OcBzK_3fWEDPP8AVNDv8t5LnB6xROEhU=',
      price: 180,
      isPopular: false,
      isRecommended: true,
    ),
    const Product(
      name: 'Smoothies#3',
      category: 'Smoothies',
      imageUrl:
          'https://media.istockphoto.com/photos/orange-fruit-smoothie-in-the-glass-jars-picture-id513799906?b=1&k=20&m=513799906&s=170667a&w=0&h=oMh0vLN0wf1-bGxDDW-FP-kV1LPuNlmYWLZ2UymY0hs=',
      price: 200,
      isPopular: true,
      isRecommended: false,
    ),
  ];
}

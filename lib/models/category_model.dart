import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    const Category(
      name: 'Soft Drinks',
      imageUrl:
          'https://images.unsplash.com/photo-1581006852262-e4307cf6283a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHNvZnQlMjBkcmlua3xlbnwwfHwwfHw%3D&w=1000&q=80',
    ),
    const Category(
      name: 'Smoothies',
      imageUrl:
          'https://images.unsplash.com/photo-1600718374662-0483d2b9da44?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fHNtb290aGllfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    ),
    const Category(
      name: 'Water',
      imageUrl:
          'https://images.unsplash.com/photo-1561041695-d2fadf9f318c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d2F0ZXIlMjBib3R0bGVzfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    ),
  ];
}

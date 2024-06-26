import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBarWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Container(
        color: Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline2!
              .copyWith(color: Colors.white),
        ),
      ),
      iconTheme: const IconThemeData(color: Colors.black),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/wishlist');
          },
          icon: const Icon(Icons.favorite),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}

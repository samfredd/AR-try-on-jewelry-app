import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String image;
  final String name;
  const CategoryCard({
    required this.image,
    required this.name,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            SizedBox(
              width: 100,
              child: Center(
                child: Image.asset(image),
              ),
            ),
            Text(
              name,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }
}

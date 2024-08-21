import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Categories",
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: const Row(
            children: [
              Text("See All"),
              SizedBox(width: 10),
              Icon(Icons.arrow_forward)
            ],
          ),
        )
      ],
    );
  }
}

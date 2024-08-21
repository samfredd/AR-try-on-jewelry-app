import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26),
            border: Border.all(
              color: Colors.black,
              width: 4,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(width: 40),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Center(
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.shopping_bag_outlined,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Image.asset("assets/images/earrings.png"),
                  ],
                ),
                const SizedBox(height: 8),
                const Text("Rings"),
                const SizedBox(height: 8),
                const Text("N20,000"),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        )
      ],
    );
  }
}

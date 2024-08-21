import 'package:flutter/material.dart';

class ShowcaseCard extends StatelessWidget {
  final String image;
  final Color backgroundColor;
  const ShowcaseCard({
    required this.backgroundColor,
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(38),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                image,
              ),
              // GestureDetector(
              //   onTap: () {},
              //   child: Container(
              //     height: 50,
              //     width: 100,
              //     decoration: BoxDecoration(
              //       color: Colors.white,
              //       borderRadius: BorderRadius.circular(12),
              //     ),
              //     child: Center(
              //       child: Text(
              //         "SHOP NOW",
              //         style: TextStyle(
              //           color: Colors.black,
              //           fontWeight: FontWeight.bold,
              //         ),
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}

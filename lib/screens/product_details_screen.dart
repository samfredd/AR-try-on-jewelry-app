import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 400,
            child: Image.asset(
              "assets/images/earrings.png",
              height: 250,
            ),
          ),
          const Row(
            children: [
              SizeOption(size: '49'),
              SizeOption(size: '50'),
              SizeOption(size: '51'),
              SizeOption(size: '52'),
            ],
          ),
          const SizedBox(height: 18),
          const Text("Newly imported earrings"),
          const SizedBox(height: 8),
          const Text("Newly imported earrings"),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("01"),
              SizedBox(width: 8),
              Text("N89000"),
            ],
          ),
          const Text("Details"),
          const SizedBox(height: 8),
          const Text(
            "feiufijweigouergv ngferwigjiuerwhgiuwe sfvjierojghewrga asfijwogrwuogiwejgfwenhgfuwfsw wfwiergvuiherwiugjoewprgwehifyhewoifsw fswefviowegfoewhrigpoerwlbguiwefhowekgfpowegfbewiughwepgl'ergmkierwhgwerp ",
          ),
        ],
      ),
    );
  }
}

class SizeOption extends StatelessWidget {
  final String size;

  const SizeOption({required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4.0),
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(size, style: const TextStyle(fontSize: 16)),
    );
  }
}

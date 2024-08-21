import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:jewels/widgets/category_card.dart';
import 'package:jewels/widgets/category_title.dart';
import 'package:jewels/widgets/product_card.dart';
import 'package:jewels/widgets/showcase_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
          ),
        ),
        title: const Text("J E W E L S"),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.shopping_bag_outlined,
            size: 30,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 0.64,
                enlargeFactor: 0.26,
                initialPage: 0,
                height: 400,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                autoPlay: true,
              ),
              items: const [
                ShowcaseCard(
                  backgroundColor: Colors.black,
                  image: "assets/images/earrings.png",
                ),
                ShowcaseCard(
                  backgroundColor: Colors.black,
                  image: "assets/images/ring.png",
                ),
                ShowcaseCard(
                  backgroundColor: Colors.black,
                  image: "assets/images/earrings.png",
                ),
                ShowcaseCard(
                  backgroundColor: Colors.black,
                  image: "assets/images/ring.png",
                ),
                ShowcaseCard(
                  backgroundColor: Colors.black,
                  image: "assets/images/earrings.png",
                ),
                ShowcaseCard(
                  backgroundColor: Colors.black,
                  image: "assets/images/ring.png",
                ),
              ],
            ),
            const SizedBox(height: 20),
            const CategoryTitle(),
            const SizedBox(height: 20),
            SizedBox(
              height: 160,
              child: Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CategoryCard(
                      image: 'assets/images/ring.png',
                      name: 'Rings',
                    ),
                    CategoryCard(
                      image: 'assets/images/earrings.png',
                      name: 'Ear Rings',
                    ),
                    CategoryCard(
                      image: 'assets/images/ring.png',
                      name: 'Rings',
                    ),
                    CategoryCard(
                      image: 'assets/images/earrings.png',
                      name: 'Ear Rings',
                    ),
                    CategoryCard(
                      image: 'assets/images/ring.png',
                      name: 'Rings',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const CategoryTitle(),
            SizedBox(
              height: 220,
              child: Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                    ProductCard(),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const CategoryTitle(),
            SizedBox(
              height: 220,
              child: Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ProductCard(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:furniture_app/main.dart';
import 'package:furniture_app/widgets/furniture_list_tile.dart';
import 'package:furniture_app/widgets/pill.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu_rounded,
                color: Colors.white,
                size: 30,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search_rounded,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                left: 26,
                bottom: 4,
              ),
              width: double.infinity,
              color: kPrimaryColor,
              child: const Text(
                'Explore',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Container(
              color: kPrimaryColor,
              height: 250,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return Card(
                      margin: const EdgeInsets.all(16),
                      clipBehavior: Clip.hardEdge,
                      child: Image.asset(
                        'assets/images/${index + 1}.jpg',
                        fit: BoxFit.cover,
                        height: 250,
                        width: 150,
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Pill(
                  str: 'Chair',
                  active: true,
                ),
                Pill(str: 'Sofa'),
                Pill(str: 'Table'),
              ],
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.only(left: 26),
              height: height / 1.92,
              width: double.infinity,
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (ctx, index) {
                  return FurnitureListTile(
                    height: height,
                    index: index,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

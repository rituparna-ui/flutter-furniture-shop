import 'package:furniture_app/main.dart';
import 'package:furniture_app/screens/cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FurnitureDetails extends StatelessWidget {
  final int index;

  const FurnitureDetails({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
              size: 30,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 16,
                ),
                Hero(
                  tag: 'furnitureListTileImage$index',
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                    clipBehavior: Clip.hardEdge,
                    child: Image.asset(
                      'assets/images/${index + 4 % 5 + 1}.jpg',
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Lorem Ipsum',
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '\$30',
                      style: TextStyle(
                        color: kAccentColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Text(
                  'Lorem Ipsum dolor \nsit amet, consectetuer.',
                  style: TextStyle(
                    color: Colors.black45,
                    letterSpacing: 1.5,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    RatingBarIndicator(
                      rating: 4.2,
                      itemBuilder: (context, index) => const Icon(
                        Icons.star,
                        color: kAccentColor,
                      ),
                      itemCount: 5,
                      itemSize: 20,
                      unratedColor: kPrimaryColor.withAlpha(50),
                    ),
                    const SizedBox(width: 12),
                    const Text(
                      '4.2',
                      style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Color',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 24),
                        Text(
                          'Quantity',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 24),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 32,
                              width: 32,
                              margin: const EdgeInsets.only(right: 16),
                              decoration: const BoxDecoration(
                                color: Colors.brown,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(16),
                                ),
                              ),
                            ),
                            Container(
                              height: 32,
                              width: 32,
                              margin: const EdgeInsets.only(right: 16),
                              decoration: const BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(16),
                                ),
                              ),
                            ),
                            Container(
                              height: 32,
                              width: 32,
                              decoration: const BoxDecoration(
                                color: Colors.indigo,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(16),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        Row(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                color: kAccentColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  customBorder: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  onTap: () {},
                                  child: const SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: Center(
                                      child: Text(
                                        '-',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            const Text(
                              '2',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 12),
                            Container(
                              decoration: const BoxDecoration(
                                color: kAccentColor,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  customBorder: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  onTap: () {},
                                  child: const SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: Center(
                                      child: Text(
                                        '+',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Center(
                  child: Hero(
                    tag: 'add-to-cart',
                    child: TextButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(kAccentColor),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) {
                              return const CartScreen();
                            },
                          ),
                        );
                      },
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                        child: Text(
                          'Add To Cart',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: kPrimaryColor,
              height: double.infinity,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Recently Viewed',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        height: double.infinity,
                        child: ListView.builder(
                          itemCount: 11,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (ctx, index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                right: 16.0,
                                top: 16,
                                bottom: 4,
                              ),
                              child: Card(
                                clipBehavior: Clip.hardEdge,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(16),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    SizedBox(
                                      height: 200,
                                      width: 250,
                                      child: Image.asset(
                                        'assets/images/${index + 1}.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      left: 0,
                                      child: Container(
                                        width: double.infinity,
                                        color: Colors.black26,
                                        padding: const EdgeInsets.only(
                                          left: 16,
                                          bottom: 8,
                                        ),
                                        child: const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Lorem Ipsum',
                                              style: TextStyle(
                                                fontSize: 22,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Text(
                                              'Lorem Ipsum dolot sit amet',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w300,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

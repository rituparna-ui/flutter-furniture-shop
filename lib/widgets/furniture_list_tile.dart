import 'package:furniture_app/main.dart';
import 'package:furniture_app/screens/furniture_details.dart';
import 'package:furniture_app/widgets/pill.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FurnitureListTile extends StatelessWidget {
  const FurnitureListTile({
    super.key,
    required this.height,
    required this.index,
  });

  final double height;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: SizedBox(
        height: 225,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'Lorem Ipsum',
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Lorem Ipsum dolor sit amet, consectetuer.',
                      style: TextStyle(
                        color: Colors.black45,
                        letterSpacing: 1.5,
                      ),
                    ),
                    const Text(
                      '\$20',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Pill(
                          str: 'Add',
                          active: true,
                          color: kPrimaryColor,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.favorite,
                            size: 28,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    bottomLeft: Radius.circular(24),
                  ),
                ),
                clipBehavior: Clip.hardEdge,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (ctx) {
                        return FurnitureDetails(index: index);
                      }),
                    );
                  },
                  child: Hero(
                    tag: 'furnitureListTileImage$index',
                    child: Image.asset(
                      'assets/images/${index + 4 % 5 + 1}.jpg',
                      fit: BoxFit.cover,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

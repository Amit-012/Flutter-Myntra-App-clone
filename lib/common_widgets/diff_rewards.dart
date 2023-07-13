import 'package:flutter/material.dart';
import 'package:myntra_clone/product_data/home_data.dart';

class DifferentRewards extends StatelessWidget {
  const DifferentRewards({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: HomeData.categoryImages.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: SizedBox(
                    height: 180,
                    child:
                        Image.network(HomeData.categoryImages[index]['image']!),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    color: Colors.white,
                    height: 70,
                    width: 270,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                          child:
                              Text(HomeData.categoryImages[index]['title']!)),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}

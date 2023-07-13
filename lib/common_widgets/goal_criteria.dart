import 'package:flutter/material.dart';
import 'package:myntra_clone/constants/const.dart';
import 'package:myntra_clone/common_widgets/cache_image.dart';

class GoalCriteria extends StatelessWidget {
  const GoalCriteria({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xff282c3f),
      ),
      child: const Padding(
        padding: EdgeInsets.only(
          top: 16,
          bottom: 14,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 12,
              ),
              child: Row(
                children: [
                  CachedImage(
                    url: insider2,
                    height: 35,
                    width: 35,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '₹0',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          'You’ve Spent',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 105,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '₹7000',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        'Goal',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 4,
            ),
            SizedBox(
              width: double.infinity,
              child: Divider(
                color: Color.fromARGB(255, 248, 245, 245),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 12,
              ),
              child: Row(
                children: [
                  CachedImage(
                    url: insider2,
                    height: 35,
                    width: 35,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '0/5',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          'Your Order',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 155,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '5',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        'Goal',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

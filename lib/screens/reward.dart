import 'package:flutter/material.dart';
import 'package:myntra_clone/common_widgets/diff_rewards.dart';
import 'package:myntra_clone/common_widgets/join_program.dart';
import 'package:myntra_clone/constants/const.dart';
import 'package:myntra_clone/common_widgets/cache_image.dart';
import 'package:myntra_clone/common_widgets/goal_criteria.dart';

class Reward extends StatelessWidget {
  const Reward({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: const Color(0xff1a1c23),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.menu),
                            onPressed: () {},
                          ),
                          const Text(
                            'Myntra',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.search_outlined,
                              color: Colors.black,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.favorite_border,
                              color: Colors.black,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(
                              Icons.shopping_bag_outlined,
                              color: Colors.black,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const CachedImage(
                  url: insider1,
                  height: 360,
                  width: double.infinity,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Become an INSIDER!',
                        style: TextStyle(
                          color: Color(0xffedab37),
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        'Join the Insider programme and earn\nSupercoins with every purchase and much more. Log in now!',
                        style: TextStyle(
                          color: Color(0xffa4a4a8),
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      const Text(
                        'New Goal Criteria',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 19,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const GoalCriteria(),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        'Note: Recent purchases will only reflect in the goal once the return window is over',
                        style: TextStyle(
                          color: Color(0xff7e818c),
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        'Benefits Of Joining The Program',
                        style: TextStyle(
                          color: Color(0xffedab37),
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const JoinProgram(),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        'How does it work',
                        style: TextStyle(
                          color: Color(0xffedab37),
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        'Earn SuperCoins with every purchase.\nYou can get upto 3 SuperCoins for every ₹100 spent',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Container(
                        height: 110,
                        color: const Color(
                          0xff2e3042,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.network(
                            insider7,
                            height: 97,
                            width: double.infinity,
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        color: const Color(0xff3e4152),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                height: 32,
                                width: 32,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    100,
                                  ),
                                ),
                                child: Image.network(
                                  insider6,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                width: 14,
                              ),
                              const Text(
                                'Shop on Myntra to Upgrade your tier',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      const Text(
                        'Rewards',
                        style: TextStyle(
                          color: Color(0xffedab37),
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        'Use your SuperCoins to get exciting rewards',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const DifferentRewards(),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 108,
                          ),
                          Image.network(
                            insider13,
                            height: 16,
                            width: 22,
                          ),
                          Image.network(
                            insider14,
                            height: 16,
                            width: 86,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      const Center(
                        child: Text(
                          'Fashion Advice | VIP Access | Extra Savings',
                          style: TextStyle(
                            color: Color(0xfff5f5f6),
                            fontSize: 13,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 120,
        color: const Color(0xff282c3f),
        child: Column(
          children: [
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 40,
              width: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  8,
                ),
                color: const Color(0xffff3f6c),
              ),
              child: const Center(
                child: Text(
                  'LOG IN',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Center(
              child: Text(
                'By enrolling you agree to',
                style: TextStyle(
                  color: Color(0xff94969f),
                  fontSize: 13,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Center(
              child: Text(
                'Insider Terms &amp; Conditions',
                style: TextStyle(
                    color: Color(0xffff3f6c),
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

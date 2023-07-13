import 'package:flutter/material.dart';
import 'package:myntra_clone/constants/const.dart';

class JoinProgram extends StatelessWidget {
  const JoinProgram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                insider3,
                fit: BoxFit.cover,
                height: 50,
                width: 50,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'New Goal Criteria',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        const SizedBox(
          width: double.infinity,
          child: Divider(
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                insider4,
                fit: BoxFit.cover,
                height: 50,
                width: 50,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            const Text(
              'Insider Exclusive Rewards &\nBenefits',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        const SizedBox(
          width: double.infinity,
          child: Divider(
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                insider5,
                fit: BoxFit.cover,
                height: 50,
                width: 50,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            const Text(
              'Priority Customer Support',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

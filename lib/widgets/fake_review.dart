import 'package:flutter/material.dart';

class FakeReview extends StatelessWidget {
  const FakeReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 100.0,
        child: Row(
          children: [
            Container(
              width: 100.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image: AssetImage('assets/images/rome_backImage.png'),
                ),
              ),
            ),
            const SizedBox(width: 10.0),
            const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'MON 11 DIC 13 20 ',
                  style: TextStyle(color: Color(0xFF666666)),
                ),
                Text('Nice days in a good place'),
                Text(
                  'Fly ticket',
                  style: TextStyle(color: Color(0xFF666666)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

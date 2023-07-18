import 'package:animation_background/travel_photo.dart';
import 'package:animation_background/widgets/fake_review.dart';
import 'package:animation_background/widgets/travel_photo_details.dart';
import 'package:animation_background/widgets/travel_photos_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TravelPhoto _selected = travelPhotos.last;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double topCardHeight = size.height / 2;
    const double horizontalListHeight = 160.0;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            height: topCardHeight,
            left: 0,
            right: 0,
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 700),
              child: TravelPhotoDetails(
                key: Key(_selected.name),
                travelPhoto: _selected,
              ),
            ),
          ),
          Positioned(
            height: horizontalListHeight,
            left: 0,
            right: 0,
            top: topCardHeight - horizontalListHeight / 3,
            child: TravelPhotosList(
              onPhotoSelected: (item) {
                setState(() {
                  _selected = item;
                });
              },
            ),
          ),
          Positioned(
            top:
                topCardHeight - horizontalListHeight / 3 + horizontalListHeight,
            left: 0,
            right: 0,
            bottom: 0,
            child: const Padding(
              padding: EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Recommendation',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700),
                    ),
                    FakeReview(),
                    FakeReview(),
                    FakeReview(),
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

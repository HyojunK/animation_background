import 'package:animation_background/travel_photo.dart';
import 'package:flutter/material.dart';

class TravelPhotoItem extends StatelessWidget {
  final TravelPhoto travelPhoto;
  const TravelPhotoItem({super.key, required this.travelPhoto});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Stack(
        children: [
          Container(
            width: 160.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage(travelPhoto.backImage),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  travelPhoto.name,
                  style: const TextStyle(fontSize: 16.0),
                ),
                Text('${travelPhoto.photos.toString()} photos')
              ],
            ),
          )
        ],
      ),
    );
  }
}

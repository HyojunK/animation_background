import 'package:animation_background/travel_photo.dart';
import 'package:flutter/material.dart';

class TravelPhotoDetails extends StatefulWidget {
  final TravelPhoto travelPhoto;
  const TravelPhotoDetails({super.key, required this.travelPhoto});

  @override
  State<TravelPhotoDetails> createState() => _TravelPhotoDetailsState();
}

class _TravelPhotoDetailsState extends State<TravelPhotoDetails>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final double _movement = -100.0;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    );
    _controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) {
        return Stack(
          fit: StackFit.expand,
          clipBehavior: Clip.none,
          children: [
            Positioned.fill(
              left: _movement * _controller.value,
              right: _movement * (1 - _controller.value),
              child: Image.asset(
                widget.travelPhoto.backImage,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 40.0,
              left: 10.0,
              right: 10.0,
              height: 100.0,
              child: FittedBox(
                child: Text(
                  widget.travelPhoto.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned.fill(
              left: _movement * _controller.value,
              right: _movement * (1 - _controller.value),
              child: Image.asset(
                widget.travelPhoto.frontImage,
                fit: BoxFit.cover,
              ),
            ),
          ],
        );
      },
    );
  }
}

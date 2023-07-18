import 'package:animation_background/travel_photo.dart';
import 'package:animation_background/widgets/travel_photo_item.dart';
import 'package:flutter/material.dart';

class TravelPhotosList extends StatefulWidget {
  final ValueChanged<TravelPhoto>? onPhotoSelected;
  const TravelPhotosList({super.key, this.onPhotoSelected});

  @override
  State<TravelPhotosList> createState() => _TravelPhotosListState();
}

class _TravelPhotosListState extends State<TravelPhotosList> {
  final _animatedListKey = GlobalKey<AnimatedListState>();
  final _pageController = PageController();

  double page = 0.0;

  void _listenScroll() {
    setState(() {
      page = _pageController.page ?? 0;
    });
  }

  @override
  void initState() {
    _pageController.addListener(_listenScroll);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.removeListener(_listenScroll);
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedList(
      key: _animatedListKey,
      physics: const PageScrollPhysics(),
      controller: _pageController,
      itemBuilder: (context, index, animation) {
        final travelPhoto = travelPhotos[index];
        return InkWell(
          onTap: () {
            final itemToDelete = travelPhoto;

            travelPhotos.insert(travelPhotos.length, travelPhoto);
            _animatedListKey.currentState!.insertItem(travelPhotos.length - 1);

            widget.onPhotoSelected!(travelPhoto);
            travelPhotos.removeAt(index);
            _animatedListKey.currentState!.removeItem(
              index,
              (context, animation) => FadeTransition(
                opacity: animation,
                child: SizeTransition(
                  sizeFactor: animation,
                  axis: Axis.horizontal,
                  child: TravelPhotoItem(
                    travelPhoto: itemToDelete,
                  ),
                ),
              ),
            );
          },
          child: TravelPhotoItem(
            travelPhoto: travelPhoto,
          ),
        );
      },
      scrollDirection: Axis.horizontal,
      initialItemCount: travelPhotos.length,
    );
  }
}

class TravelPhoto {
  final String backImage;
  final String frontImage;
  final String name;
  final int photos;

  TravelPhoto({
    required this.backImage,
    required this.frontImage,
    required this.name,
    required this.photos,
  });
}

final travelPhotos = [
  TravelPhoto(
    backImage: 'assets/images/japan_backImage.png',
    frontImage: 'assets/images/japan_frontImage.png',
    name: 'Japan',
    photos: 768,
  ),
  TravelPhoto(
    backImage: 'assets/images/kuala_lumpur_backImage.png',
    frontImage: 'assets/images/kuala_lumpur_frontImage.png',
    name: 'Kuala Lumpur',
    photos: 658,
  ),
  TravelPhoto(
    backImage: 'assets/images/paris_backlmage.png',
    frontImage: 'assets/images/paris_frontImage.png',
    name: 'Paris',
    photos: 1289,
  ),
  TravelPhoto(
    backImage: 'assets/images/rome_backImage.png',
    frontImage: 'assets/images/rome_frontImage.png',
    name: 'Rome',
    photos: 865,
  ),
  TravelPhoto(
    backImage: 'assets/images/singapore_backImage.png',
    frontImage: 'assets/images/singapore_frontImage.png',
    name: 'Singapore',
    photos: 768,
  ),
  TravelPhoto(
    backImage: 'assets/images/south_korea_backImage.png',
    frontImage: 'assets/images/south_korea_frontImage.png',
    name: 'South Korea',
    photos: 865,
  ),
  TravelPhoto(
    backImage: 'assets/images/sydney_backImage.png',
    frontImage: 'assets/images/sydney_frontImage.png',
    name: 'Sydney',
    photos: 658,
  ),
  TravelPhoto(
    backImage: 'assets/images/thailand_backImage.png',
    frontImage: 'assets/images/thailand_frontImage.png',
    name: 'Thailand',
    photos: 768,
  ),
];

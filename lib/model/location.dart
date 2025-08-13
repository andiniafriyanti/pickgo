class TrashLocation {
  final String name;
  final String location;
  final String imageAsset;
  final String description;

  TrashLocation({
    required this.name,
    required this.location,
    required this.imageAsset,
    required this.description,
  });
}

var trashLocationList = [
  TrashLocation(
    name: 'Pantai Kuta',
    location: 'Bali, Indonesia',
    imageAsset: 'assets/images/pantai_bali.jpg',
    description:
        'Titik sampah yang ditemukan di pantai. Membutuhkan relawan untuk membersihkan.',
  ),
  TrashLocation(
    name: 'Pura Taman Saraswati',
    location: 'Bali, Indonesia',
    imageAsset: 'assets/images/taman_bali.png',
    description:
        'Sampah berserakan di sekitar taman. Butuh perhatian warga sekitar.',
  ),
];

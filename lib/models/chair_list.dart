class Chair {
  final String path;
  final String name;
  final String description;
  final String value;

  Chair({
    this.path,
    this.name,
    this.value,
    this.description,
  });
}

List<Chair> listChair = [
  Chair(
    path: 'assets/image/chair.png',
    name: 'Lounce Seating 1',
    value: '\$123',
    description: 'W/ Grade 1 Vinyl',
  ),
  Chair(
    path: 'assets/image/chair2.png',
    name: 'Lounce Seating 2',
    value: '\$456',
    description: 'W/ Grade 2 Vinyl',
  ),
  Chair(
    path: 'assets/image/chair3.png',
    name: 'Lounce Seating 3',
    value: '\$789',
    description: 'W/ Grade 3 Vinyl',
  ),
];

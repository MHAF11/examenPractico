class Driver {
  final String name;
  final double rating;
  final int reviews;
  final String car;

  Driver({
    required this.name,
    required this.rating,
    required this.reviews,
    required this.car,
  });
}

final Driver staticDriver = Driver(
  name: "Mario",
  rating: 4.99,
  reviews: 347,
  car: "Small car",
);

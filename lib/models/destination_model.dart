import './activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
    required this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/murano.jpg',
    name: 'Murano & Burano Tour',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:30 pm'],
    rating: 4,
    price: 100,
  ),
  Activity(
    imageUrl: 'assets/images/gondola.jpg',
    name: 'Walking Tour gondola ride',
    type: 'Sightseeing Tour',
    startTimes: ['7:30 am', '8:30 am'],
    rating: 5,
    price: 140,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/newyork.jpg',
    city: 'New York City',
    country: 'United States',
    description: 'Visit New York for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/paris.jpg',
    city: 'Paris',
    country: 'France',
    description:
        'Visit Paris for an amazing and unforgettable adventure. The beautiful city!',
    activities: activities,
  ),
  // Destination(
  //   imageUrl: 'assets/images/newyork.jpg',
  //   city: 'New York City',
  //   country: 'United States',
  //   description: 'Visit New York.',
  //   activities: activities,
  // ),
];

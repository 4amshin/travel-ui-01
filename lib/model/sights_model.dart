// ignore_for_file: public_member_api_docs, sort_constructors_first
class Sight {
  final String? imgUrl;
  final String? name;
  final double? price;
  final double? hours;
  final double? rating;
  final String? description;
  Sight({
    required this.imgUrl,
    required this.name,
    required this.price,
    required this.hours,
    required this.rating,
    required this.description,
  });
}

List<Sight> sights = [
  Sight(
    imgUrl: 'china.jpg',
    name: 'Waduk Wonorejo',
    price: 96,
    hours: 3,
    rating: 3.5,
    description:
        "Waduk Wonorejo is a stunning vacation destination that offers breathtaking views of the surrounding mountains and lush greenery. With its tranquil waters and serene atmosphere, it's the perfect place to escape from the hustle and bustle of city life.",
  ),
  Sight(
    imgUrl: 'japan.jpg',
    name: 'Niagara Falls',
    price: 106,
    hours: 6,
    rating: 4.5,
    description:
        "Located on the border between New York and Canada, Niagara Falls is a stunning natural wonder that draws millions of visitors each year. You can take a boat tour to see the falls up close, or enjoy the views from one of the many observation decks.",
  ),
];

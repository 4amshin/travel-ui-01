// ignore_for_file: public_member_api_docs, sort_constructors_first
class Sight {
  final String? imgUrl;
  final String? name;
  final double? price;
  final double? hours;
  final double? rating;
  final String? heroTag;
  final String? description;
  Sight({
    required this.imgUrl,
    required this.name,
    required this.price,
    required this.hours,
    required this.rating,
    required this.heroTag,
    required this.description,
  });
}

List<Sight> sights = [
  Sight(
    imgUrl: 'japan.jpg',
    name: 'Niagara Falls',
    price: 106,
    hours: 6,
    rating: 4.5,
    heroTag: 'niagara',
    description:
        "Located on the border between New York and Canada, Niagara Falls is a stunning natural wonder that draws millions of visitors each year. You can take a boat tour to see the falls up close, or enjoy the views from one of the many observation decks.",
  ),
  Sight(
    imgUrl: 'china.jpg',
    name: 'Waduk Wonorejo',
    price: 96,
    hours: 3,
    rating: 3.5,
    heroTag: 'waduk',
    description:
        "Waduk Wonorejo is a stunning vacation destination that offers breathtaking views of the surrounding mountains and lush greenery. With its tranquil waters and serene atmosphere, it's the perfect place to escape from the hustle and bustle of city life.",
  ),
  Sight(
    imgUrl: 'korea.jpg',
    name: 'Aranthus Vale',
    price: 75,
    hours: 10,
    rating: 4.0,
    heroTag: 'arantus',
    description:
        "Aranthus Vale is a mystical city nestled in the heart of a lush valley, surrounded by towering mountains and winding rivers. It's home to ancient ruins and magical artifacts, making it a popular destination for adventurers seeking to uncover its secrets.",
  ),
];

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Adventure {
  final String iconUrl;
  final String name;
  Adventure({
    required this.iconUrl,
    required this.name,
  });
}

List<Adventure> adventures = [
  Adventure(
    iconUrl: 'kayaking.svg',
    name: 'Kayaking',
  ),
  Adventure(
    iconUrl: 'balloon.svg',
    name: 'Ballooning',
  ),
  Adventure(
    iconUrl: 'hiking.svg',
    name: 'Hiking',
  ),
  Adventure(
    iconUrl: 'diving.svg',
    name: 'Snorkeling',
  ),
  Adventure(
    iconUrl: 'biking.svg',
    name: 'Biking',
  ),
];

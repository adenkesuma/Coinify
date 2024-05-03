class Crypto {
  final String name;
  final String logoUrl;
  final String price;
  final String percen;

  Crypto({
    required this.name,
    required this.logoUrl,
    required this.price,
    required this.percen
  });
}

class PolygonLearner {
  final String imageUrl;
  final String title;
  final String earn;
  final String time;

  PolygonLearner({
    required this.imageUrl,
    required this.title,
    required this.earn,
    required this.time
  });
}

List<Crypto> cryptoList = [
  Crypto(name: 'KNC', logoUrl: 'assets/images/KNC.png', price: '\$2,66', percen: '+22.37%'),
  Crypto(name: 'ATOM', logoUrl: 'assets/images/ATOM.png', price: '\$16.39', percen: '+16.07%'),
  Crypto(name: 'CRV', logoUrl: 'assets/images/CRV.png', price: '\$20.10', percen: '+13.30%'),
];

List<PolygonLearner> polygonLearn = [
  PolygonLearner(imageUrl: 'assets/images/matic-learn.png', title: 'What is Polygon?', earn: 'earn \$3 MATIC', time: '1 min'),
  PolygonLearner(imageUrl: 'assets/images/matic-learn.png', title: 'What is Polygon?', earn: 'earn \$3 MATIC', time: '1 min'),
  PolygonLearner(imageUrl: 'assets/images/matic-learn.png', title: 'What is Polygon?', earn: 'earn \$3 MATIC', time: '1 min'),
];
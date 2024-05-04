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

class News {
  final String timeUploaded;
  final String coin;
  final String title;
  final String imageUrl;

  News({
    required this.timeUploaded,
    required this.coin,
    required this.title,
    required this.imageUrl
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

List<News> news = [
  News(imageUrl: 'assets/images/news-1.png', title: 'Miami Crypto Aspirations Boosted by Borderless Capital’s \$25 Milion Fund', coin: 'USD coin', timeUploaded: 'Decrypt • 18 hours ago • '),
  News(imageUrl: 'assets/images/news-2.png', title: 'Bitcoin Mini Showdown Puts New York on Front Lines of a Green Fight', coin: 'Bitcoin', timeUploaded: 'Decrypt • 19 hours ago • '),
  News(imageUrl: 'assets/images/news-3.png', title: 'Bitcoin Price Volatility Reached Its Highest In A Year During May', coin: 'Bitcoin', timeUploaded: 'Decrypt • 20 hours ago • '),
  News(imageUrl: 'assets/images/news-4.png', title: 'Guggenheim’s New Fund May Seek Bitcoin Exposure', coin: 'Bitcoin', timeUploaded: 'Decrypt • 21 hours ago • '),
  News(imageUrl: 'assets/images/news-5.png', title: 'Standard Chartered to launch institutional crypto brokerage and exchange in Europe', coin: 'USD coin', timeUploaded: 'Decrypt • 21 hours ago • '),
];


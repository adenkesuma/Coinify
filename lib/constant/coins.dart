class Crypto {
  final String name;
  final String logoUrl;
  final String price;
  final String percen;
  final String fullName;

  Crypto({
    required this.name,
    required this.logoUrl,
    required this.price,
    required this.percen,
    required this.fullName
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

class Coins {
  final String imageUrl;
  final String name;
  final String price;
  final String myAsset;
  final String nameCoin;

  Coins({
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.myAsset,
    required this.nameCoin
  });
}

List<Crypto> cryptoList = [
  Crypto(name: 'KNC', logoUrl: 'assets/images/KNC.png', price: '\$2,66', percen: '+22.37%',fullName: 'KNC'),
  Crypto(name: 'ATOM', logoUrl: 'assets/images/ATOM.png', price: '\$16.39', percen: '+16.07%',fullName: 'Atom'),
  Crypto(name: 'CRV', logoUrl: 'assets/images/CRV.png', price: '\$20.10', percen: '+13.30%',fullName: 'CRV'),
  Crypto(name: "BTC", logoUrl: "assets/images/Bitcoin.png", price: "\$36,701.78", percen: "-6,28%",fullName: "Bitcoin"),
  Crypto(name: "BCH", logoUrl: "assets/images/bch.png", price: "\$666.25", percen: "-9,2%",fullName: "Bitcoin Cash"),
  Crypto(name: "ETH", logoUrl: "assets/images/ETH.png", price: "\$2,629.70", percen: "-8,12%",fullName: "Ethereum"),
  Crypto(name: "ETC", logoUrl: "assets/images/ETC.png", price: "\$63.94", percen: "-9.56%",fullName: "Ethereum Classic"),
  Crypto(name: "LTC", logoUrl: "assets/images/LTC.png", price: "\$175.76", percen: "-10.01%",fullName: "Lite coin"),
  Crypto(name: "BCH", logoUrl: "assets/images/0x-zrx.png", price: "\$1.07", percen: "-10.75%",fullName: "Ox"),
  Crypto(name: "BAT", logoUrl: "assets/images/BAT.png", price: "\$1.07", percen: "-10.35%",fullName: "Basic Attention Token"),
];

List<Crypto> filterCrypto = [];
void filterTheCrypto(text){
  filterCrypto.clear();
  for(int i=0;i<cryptoList.length;i++){
    if((cryptoList[i].name.toLowerCase().contains(text.toLowerCase()) || cryptoList[i].fullName.toLowerCase().contains(text.toLowerCase())) && text!=""){
      print(text);
      filterCrypto.add(cryptoList[i]);
    }
  }
}


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

List<Coins> coins = [
  Coins(imageUrl: 'assets/images/USDC.png', name: 'USD Coin', price: '\$0.00', myAsset: '0', nameCoin: 'USDC'),
  Coins(imageUrl: 'assets/images/MATIC.png', name: 'Polygon', price: '\$13.80', myAsset: '8.93221123', nameCoin: 'MATIC'),
  Coins(imageUrl: 'assets/images/Ox-zrx.png', name: 'Ox', price: '\$0.00', myAsset: '0', nameCoin: 'ZRX'),
  Coins(imageUrl: 'assets/images/AAVE.png', name: 'Aave', price: '\$0.00', myAsset: '0', nameCoin: 'AAVE'),
  Coins(imageUrl: 'assets/images/ALGO.png', name: 'Algorand', price: '\$0.00', myAsset: '0', nameCoin: 'ALGO'),
  Coins(imageUrl: 'assets/images/ampl.png', name: 'Ampleforth Governance', price: '\$0.00', myAsset: '0', nameCoin: 'FORTH'),
  Coins(imageUrl: 'assets/images/ANKR.png', name: 'Ankr', price: '\$0.00', myAsset: '0', nameCoin: 'ANKR'),
  Coins(imageUrl: 'assets/images/Bitcoin.png', name: 'Bitcoin', price: '\$75.000', myAsset: '1', nameCoin: 'BTC'),
  Coins(imageUrl: 'assets/images/1INCH.png', name: '1Inch', price: '\$0.00', myAsset: '0', nameCoin: '1INC'),
  Coins(imageUrl: 'assets/images/bch.png', name: 'Bitcoin Cash', price: '\$0.00', myAsset: '0', nameCoin: 'BTH'),
  Coins(imageUrl: 'assets/images/ETH.png', name: 'Ethereum', price: '\$0.00', myAsset: '0', nameCoin: 'ETH'),
  Coins(imageUrl: 'assets/images/ETC.png', name: 'Ethereum Classic', price: '\$0.00', myAsset: '0', nameCoin: 'ETC'),
];

List<Coins> allCoins = [
  Coins(imageUrl: 'assets/images/USDC.png', name: 'USD Coin', price: '\$0.00', myAsset: '0', nameCoin: 'USDC'),
  Coins(imageUrl: 'assets/images/MATIC.png', name: 'Polygon', price: '\$13.80', myAsset: '8.93221123', nameCoin: 'MATIC'),
  Coins(imageUrl: 'assets/images/Ox-zrx.png', name: 'Ox', price: '\$0.00', myAsset: '0', nameCoin: 'ZRX'),
  Coins(imageUrl: 'assets/images/AAVE.png', name: 'Aave', price: '\$0.00', myAsset: '0', nameCoin: 'AAVE'),
  Coins(imageUrl: 'assets/images/ALGO.png', name: 'Algorand', price: '\$0.00', myAsset: '0', nameCoin: 'ALGO'),
  Coins(imageUrl: 'assets/images/ampl.png', name: 'Ampleforth Governance', price: '\$0.00', myAsset: '0', nameCoin: 'FORTH'),
  Coins(imageUrl: 'assets/images/ANKR.png', name: 'Ankr', price: '\$0.00', myAsset: '0', nameCoin: 'ANKR'),
  Coins(imageUrl: 'assets/images/Bitcoin.png', name: 'Bitcoin', price: '\$75.000', myAsset: '1', nameCoin: 'BTC'),
  Coins(imageUrl: 'assets/images/1INCH.png', name: '1Inch', price: '\$0.00', myAsset: '0', nameCoin: '1INC'),
  Coins(imageUrl: 'assets/images/bch.png', name: 'Bitcoin Cash', price: '\$0.00', myAsset: '0', nameCoin: 'BTH'),
  Coins(imageUrl: 'assets/images/ETH.png', name: 'Ethereum', price: '\$0.00', myAsset: '0', nameCoin: 'ETH'),
  Coins(imageUrl: 'assets/images/ETC.png', name: 'Ethereum Classic', price: '\$0.00', myAsset: '0', nameCoin: 'ETC'),
];

List<Coins> tradableCoins = [
  Coins(imageUrl: 'assets/images/USDC.png', name: 'USD Coin', price: '\$0.00', myAsset: '0', nameCoin: 'USDC'),
  Coins(imageUrl: 'assets/images/MATIC.png', name: 'Polygon', price: '\$13.80', myAsset: '8.93221123', nameCoin: 'MATIC'),
  Coins(imageUrl: 'assets/images/Ox-zrx.png', name: 'Ox', price: '\$0.00', myAsset: '0', nameCoin: 'ZRX'),
  Coins(imageUrl: 'assets/images/AAVE.png', name: 'Aave', price: '\$0.00', myAsset: '0', nameCoin: 'AAVE'),
  Coins(imageUrl: 'assets/images/ALGO.png', name: 'Algorand', price: '\$0.00', myAsset: '0', nameCoin: 'ALGO'),
  Coins(imageUrl: 'assets/images/ampl.png', name: 'Ampleforth Governance', price: '\$0.00', myAsset: '0', nameCoin: 'FORTH'),
  Coins(imageUrl: 'assets/images/ANKR.png', name: 'Ankr', price: '\$0.00', myAsset: '0', nameCoin: 'ANKR'),
];

List<Coins> gainersCoins = [
  Coins(imageUrl: 'assets/images/USDC.png', name: 'USD Coin', price: '\$0.00', myAsset: '0', nameCoin: 'USDC'),
  Coins(imageUrl: 'assets/images/MATIC.png', name: 'Polygon', price: '\$13.80', myAsset: '8.93221123', nameCoin: 'MATIC'),
  Coins(imageUrl: 'assets/images/ALGO.png', name: 'Algorand', price: '\$0.00', myAsset: '0', nameCoin: 'ALGO'),
  Coins(imageUrl: 'assets/images/ampl.png', name: 'Ampleforth Governance', price: '\$0.00', myAsset: '0', nameCoin: 'FORTH'),
  Coins(imageUrl: 'assets/images/ANKR.png', name: 'Ankr', price: '\$0.00', myAsset: '0', nameCoin: 'ANKR'),
];

List<Coins> losersCoins = [
  Coins(imageUrl: 'assets/images/USDC.png', name: 'USD Coin', price: '\$0.00', myAsset: '0', nameCoin: 'USDC'),
  Coins(imageUrl: 'assets/images/ALGO.png', name: 'Algorand', price: '\$0.00', myAsset: '0', nameCoin: 'ALGO'),
  Coins(imageUrl: 'assets/images/ampl.png', name: 'Ampleforth Governance', price: '\$0.00', myAsset: '0', nameCoin: 'FORTH'),
  Coins(imageUrl: 'assets/images/ANKR.png', name: 'Ankr', price: '\$0.00', myAsset: '0', nameCoin: 'ANKR'),
];


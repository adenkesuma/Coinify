import 'package:defi/constant/coins.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PricesMenu extends StatefulWidget {
  const PricesMenu({super.key});

  @override
  State<PricesMenu> createState() => _PricesMenuState();
}

class _PricesMenuState extends State<PricesMenu> {
  String _selectedText = 'All assets';

  void _updateSelectedText(String newText) {
    setState(() {
      _selectedText = newText;
    });
  }  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 50.0, left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => AccountSettings()));
                    },
                    child: CircleAvatar(
                      radius: 30, 
                      backgroundImage: AssetImage('assets/images/user.png'), 
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text(
                    'In the past 24 hours',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: "GraphikMedium",
                      color: Colors.grey.shade700
                    ),
                    textAlign: TextAlign.center,
                  ),          
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Market is up',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w700,
                              fontFamily: "GraphikMedium"
                            ),
                            textAlign: TextAlign.center,
                          ),  
                          Text(
                            ' +4.19%',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.green.shade700,
                              fontFamily: "GraphikMedium"
                            ),
                            textAlign: TextAlign.center,
                          ) 
                        ],
                      ),
                      Center(
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey.shade600,
                              width: 1
                            )
                          ),
                          child: Center(
                            child: Icon(
                              Icons.search,
                              size: 30,
                              color: Colors.grey.shade900,
                            ),
                          ),
                        ), 
                      )
                    ]
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () => _updateSelectedText('All assets'),
                        child: Text(
                          'All assets',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: _selectedText == 'All assets' ? Colors.blue : Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      InkWell(
                        onTap: () => _updateSelectedText('Tradable'),
                        child: Text(
                          'Tradable',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: _selectedText == 'Tradable' ? Colors.blue : Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      InkWell(
                        onTap: () => _updateSelectedText('Gainers'),
                        child: Text(
                          'Gainers',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: _selectedText == 'Gainers' ? Colors.blue : Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      InkWell(
                        onTap: () => _updateSelectedText('Losers'),
                        child: Text(
                          'Losers',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: _selectedText == 'Losers' ? Colors.blue : Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 1000, // Atur tinggi sesuai kebutuhan
                    child: _selectedText == 'All assets' ? AllCoins() : 
                      _selectedText == 'Tradable' ? TradableCoins() : 
                      _selectedText == 'Gainers' ? GainersCoins() :
                      _selectedText == 'Losers' ? LosersCoins() : Text(''),
                  ),
                ],
              ),
            ],
          )
        )
      ),
    );
  }
}

class AllCoins extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: allCoins.length, // Ganti dengan jumlah kartu yang Anda inginkan
      itemBuilder: (BuildContext context, int index) {
        Coins allcoins = allCoins[index];
        return Card(
          elevation: 0, // Menghilangkan bayangan default Card
          child: Container(
            padding: EdgeInsets.only(top: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      allcoins.imageUrl,
                      // 'assets/images/USDC.png',
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 14,),
                    Text(
                      allcoins.name,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: "GraphikMedium"
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ]
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      allcoins.price,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: "GraphikMedium"
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      allcoins.myAsset + ' ' + allcoins.nameCoin,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade600,
                        fontFamily: "GraphikMedium"
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )
              ]
            ),
          ),
        );
      },
    );
  }
}

class TradableCoins extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: tradableCoins.length, // Ganti dengan jumlah kartu yang Anda inginkan
      itemBuilder: (BuildContext context, int index) {
        Coins tradablecoins = tradableCoins[index];
        return Card(
          elevation: 0, // Menghilangkan bayangan default Card
          child: Container(
            padding: EdgeInsets.only(top: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      tradablecoins.imageUrl,
                      // 'assets/images/USDC.png',
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 14,),
                    Text(
                      tradablecoins.name,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: "GraphikMedium"
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ]
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      tradablecoins.price,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: "GraphikMedium"
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      tradablecoins.myAsset + ' ' + tradablecoins.nameCoin,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade600,
                        fontFamily: "GraphikMedium"
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )
              ]
            ),
          ),
        );
      },
    );
  }
}

class GainersCoins extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: gainersCoins.length, // Ganti dengan jumlah kartu yang Anda inginkan
      itemBuilder: (BuildContext context, int index) {
        Coins gainerscoins = gainersCoins[index];
        return Card(
          elevation: 0, // Menghilangkan bayangan default Card
          child: Container(
            padding: EdgeInsets.only(top: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      gainerscoins.imageUrl,
                      // 'assets/images/USDC.png',
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 14,),
                    Text(
                      gainerscoins.name,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: "GraphikMedium"
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ]
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      gainerscoins.price,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: "GraphikMedium"
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      gainerscoins.myAsset + ' ' + gainerscoins.nameCoin,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade600,
                        fontFamily: "GraphikMedium"
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )
              ]
            ),
          ),
        );
      },
    );
  }
}

class LosersCoins extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: losersCoins.length, // Ganti dengan jumlah kartu yang Anda inginkan
      itemBuilder: (BuildContext context, int index) {
        Coins loserscoins = losersCoins[index];
        return Card(
          elevation: 0, // Menghilangkan bayangan default Card
          child: Container(
            padding: EdgeInsets.only(top: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      loserscoins.imageUrl,
                      // 'assets/images/USDC.png',
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 14,),
                    Text(
                      loserscoins.name,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: "GraphikMedium"
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ]
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      loserscoins.price,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: "GraphikMedium"
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      loserscoins.myAsset + ' ' + loserscoins.nameCoin,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade600,
                        fontFamily: "GraphikMedium"
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                )
              ]
            ),
          ),
        );
      },
    );
  }
}
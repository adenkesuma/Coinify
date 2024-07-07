import 'package:crypto_market/Crypto_Market/Model/coin_trade_history_model.dart';
import 'package:defi/constant/coins.dart';
import 'package:defi/menu-screens/crypto-graph.dart';
import 'package:defi/menu-screens/searching.dart';
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
      body: Container(
        padding: EdgeInsets.only(top: 50.0, left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(
                  width: MediaQuery.of(context).size.width*2/3,
                  child: Row(
                    children: [
                      Text(
                        'Market is up',
                        style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.w700,
                          fontFamily: "GraphikMedium"
                        ),
                        textAlign: TextAlign.center,
                      ),  
                      Text(
                        ' +4.19%',
                        style: TextStyle(
                          fontSize: 23.0,
                          fontWeight: FontWeight.w700,
                          color: Colors.green.shade700,
                          fontFamily: "GraphikMedium"
                        ),
                        textAlign: TextAlign.center,
                      ) 
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Searching(),));
                  },
                  child: Center(
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
            Expanded(
              child: _selectedText == 'All assets' ? AllCoins() : 
                _selectedText == 'Tradable' ? TradableCoins() : 
                _selectedText == 'Gainers' ? GainersCoins() :
                _selectedText == 'Losers' ? LosersCoins() : Text(''),
            ),
          ],
        ),
      ),
    );
  }
}

class AllCoins extends StatelessWidget {
  const AllCoins({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cryptoList.length,
      itemBuilder: (context, index) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: 70,
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => CryptoGraph(index: index,what: "All assets",),));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(cryptoList[index].logoUrl),
                        SizedBox(width: 16,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(cryptoList[index].fullName,style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16),),
                            Text(cryptoList[index].name,style: TextStyle(fontFamily: "GraphikRegular",fontSize: 14,color: Colors.grey),),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(cryptoList[index].price,style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16),),
                        Text(cryptoList[index].percen,style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16,color: Colors.green),)
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 24,)
            ],
          ),
        );
      },
    );
  }
}

class TradableCoins extends StatelessWidget {
  const TradableCoins({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tradeableCryptoList.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => CryptoGraph(index: index,what: "Tradeable",),));
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 70,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(tradeableCryptoList[index].logoUrl),
                        SizedBox(width: 16,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(tradeableCryptoList[index].fullName,style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16),),
                            Text(tradeableCryptoList[index].name,style: TextStyle(fontFamily: "GraphikRegular",fontSize: 14,color: Colors.grey),),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(tradeableCryptoList[index].price,style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16),),
                        Text(tradeableCryptoList[index].percen,style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16,color: Colors.green),)
                      ],
                    )
                  ],
                ),
                SizedBox(height: 24,)
              ],
            ),
          ),
        );
      },
    );
  }
}

class GainersCoins extends StatelessWidget {
  const GainersCoins({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: gainersCryptoList.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => CryptoGraph(index: index,what: "Gainers",),));
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 70,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(gainersCryptoList[index].logoUrl),
                        SizedBox(width: 16,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(gainersCryptoList[index].fullName,style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16),),
                            Text(gainersCryptoList[index].name,style: TextStyle(fontFamily: "GraphikRegular",fontSize: 14,color: Colors.grey),),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(gainersCryptoList[index].price,style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16),),
                        Text(gainersCryptoList[index].percen,style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16,color: Colors.green),)
                      ],
                    )
                  ],
                ),
                SizedBox(height: 24,)
              ],
            ),
          ),
        );
      },
    );
  }
}

class LosersCoins extends StatelessWidget {
  const LosersCoins({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: losersCryptoList.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => CryptoGraph(index: index,what: "Losers",),));
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 70,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(losersCryptoList[index].logoUrl),
                        SizedBox(width: 16,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(losersCryptoList[index].fullName,style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16),),
                            Text(losersCryptoList[index].name,style: TextStyle(fontFamily: "GraphikRegular",fontSize: 14,color: Colors.grey),),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(losersCryptoList[index].price,style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16),),
                        Text(losersCryptoList[index].percen,style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16,color: Colors.green),)
                      ],
                    )
                  ],
                ),
                SizedBox(height: 24,)
              ],
            ),
          ),
        );
      },
    );
  }
}
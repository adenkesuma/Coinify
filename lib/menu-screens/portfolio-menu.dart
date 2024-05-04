import 'package:defi/constant/coins.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PortfolioMenu extends StatefulWidget {
  const PortfolioMenu({super.key});

  @override
  State<PortfolioMenu> createState() => _PortfolioMenuState();
}

class _PortfolioMenuState extends State<PortfolioMenu> {
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
                  Text(
                    'Portfolio balance',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: "GraphikMedium",
                      color: Colors.grey.shade700
                    ),
                    textAlign: TextAlign.center,
                  ),          
                  Text(
                    '\$13.84',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w800,
                      fontFamily: "GraphikMedium"
                    ),
                    textAlign: TextAlign.center,
                  ),  
                ]
              ),
              SizedBox(height: 14.0,),
              SizedBox(
                height: 1000, // Atur tinggi sesuai kebutuhan
                child: VerticalScrollCoins(),
              ),
            ],
          ),
        )
      )
    );
  }
}

class VerticalScrollCoins extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: coins.length, // Ganti dengan jumlah kartu yang Anda inginkan
      itemBuilder: (BuildContext context, int index) {
        Coins coin = coins[index];
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
                      coin.imageUrl,
                      // 'assets/images/USDC.png',
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 14,),
                    Text(
                      coin.name,
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
                      coin.price,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: "GraphikMedium"
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      coin.myAsset + ' ' + coin.nameCoin,
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
                // Image.asset(
                //   coin.imageUrl,
                //   fit: BoxFit.cover,
                // ),
              ]
            ),
          ),
        );
      },
    );
  }
}
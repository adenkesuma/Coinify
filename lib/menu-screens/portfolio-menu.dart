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
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            color: Colors.white,
            itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              const PopupMenuItem(
                child: Text("USD")
              ),
              const PopupMenuItem(
                child: Text("IDR")
              )
            ]
          ),
          const SizedBox(width: 15,),
          ],
        ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 50.0, left: 30, right: 30),
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
                  const Text(
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
              const SizedBox(height: 14.0,),
              SizedBox(
                height: 1000, // Atur tinggi sesuai kebutuhan
                child: VerticalScrollCoins(),
              ),
            ],
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()async{
          print("Hello world");
          await showPortfolioMenuBottomSheet(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

Future<void> showPortfolioMenuBottomSheet(BuildContext context){
  return showModalBottomSheet<dynamic>(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: 445,
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: (){},
              child: const Row(
                children: [
                  Icon(Icons.add_rounded,color: Colors.blue,),
                  SizedBox(width: 12,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Buy",style: TextStyle(fontFamily: "GraphikMedium",fontSize: 16),),
                      Text("Buy crypto with cash",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 14,color: Colors.grey),)
                    ]
                  )
                ],
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))
                ),
                minimumSize: MaterialStateProperty.all(const Size.fromHeight(60.0)),
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                foregroundColor: MaterialStateProperty.all(Colors.black),
                shadowColor: MaterialStateProperty.all(Colors.transparent),
                textStyle: MaterialStateProperty.all(
                  const TextStyle(
                    fontFamily: "GraphikRegular",
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32,),
            ElevatedButton(
              onPressed: (){},
              child: const Row(
                children: [
                  Icon(Icons.add_rounded,color: Colors.blue,),
                  SizedBox(width: 12,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sell",style: TextStyle(fontFamily: "GraphikMedium",fontSize: 16),),
                      Text("Sell crypto for cash",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 14,color: Colors.grey),)
                    ]
                  )
                ],
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))
                ),
                minimumSize: MaterialStateProperty.all(const Size.fromHeight(60.0)),
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                foregroundColor: MaterialStateProperty.all(Colors.black),
                shadowColor: MaterialStateProperty.all(Colors.transparent),
                textStyle: MaterialStateProperty.all(
                  const TextStyle(
                    fontFamily: "GraphikRegular",
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32,),
            ElevatedButton(
              onPressed: (){},
              child: const Row(
                children: [
                  Icon(Icons.add_rounded,color: Colors.blue,),
                  SizedBox(width: 12,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Convert",style: TextStyle(fontFamily: "GraphikMedium",fontSize: 16),),
                      Text("Convet one crypto to another",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 14,color: Colors.grey),)
                    ]
                  )
                ],
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))
                ),
                minimumSize: MaterialStateProperty.all(const Size.fromHeight(60.0)),
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                foregroundColor: MaterialStateProperty.all(Colors.black),
                shadowColor: MaterialStateProperty.all(Colors.transparent),
                textStyle: MaterialStateProperty.all(
                  const TextStyle(
                    fontFamily: "GraphikRegular",
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32,),
            ElevatedButton(
              onPressed: (){},
              child: const Row(
                children: [
                  Icon(Icons.add_rounded,color: Colors.blue,),
                  SizedBox(width: 12,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Send",style: TextStyle(fontFamily: "GraphikMedium",fontSize: 16),),
                      Text("Send crypto to another wallet",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 14,color: Colors.grey),)
                    ]
                  )
                ],
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))
                ),
                minimumSize: MaterialStateProperty.all(const Size.fromHeight(60.0)),
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                foregroundColor: MaterialStateProperty.all(Colors.black),
                shadowColor: MaterialStateProperty.all(Colors.transparent),
                textStyle: MaterialStateProperty.all(
                  const TextStyle(
                    fontFamily: "GraphikRegular",
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32,),
            ElevatedButton(
              onPressed: (){},
              child: const Row(
                children: [
                  Icon(Icons.add_rounded,color: Colors.blue,),
                  SizedBox(width: 12,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Receive",style: TextStyle(fontFamily: "GraphikMedium",fontSize: 16),),
                      Text("Receive crypto from another wallet",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 14,color: Colors.grey),)
                    ]
                  )
                ],
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))
                ),
                minimumSize: MaterialStateProperty.all(const Size.fromHeight(60.0)),
                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                foregroundColor: MaterialStateProperty.all(Colors.black),
                shadowColor: MaterialStateProperty.all(Colors.transparent),
                textStyle: MaterialStateProperty.all(
                  const TextStyle(
                    fontFamily: "GraphikRegular",
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
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
          color: Colors.white,
          elevation: 0, // Menghilangkan bayangan default Card
          child: Container(
            padding: const EdgeInsets.only(top: 24),
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
                    const SizedBox(width: 14,),
                    Text(
                      coin.name,
                      style: const TextStyle(
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
                      style: const TextStyle(
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
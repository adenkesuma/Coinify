import 'package:defi/constant/coins.dart';
import 'package:flutter/material.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({super.key});

  @override
  State<HomeMenu> createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/wallet-home.png',
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 20.0),
                Center(
                  child: Text(
                    'Welcome to Coinify!',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: "GraphikMedium"
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 4.0),
                Center(
                  child: Text(
                    'Make your first investment today',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey[700]
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 30.0),
                ElevatedButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, '/two-step-verification');
                  }, 
                  child: Text(
                    'Add payment method',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontFamily: "GraphikMedium",
                    ),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))
                    ),
                    minimumSize: MaterialStateProperty.all(Size.fromHeight(60.0)),
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    shadowColor: MaterialStateProperty.all(Colors.transparent)
                  ),
                ),
                SizedBox(height: 40.0,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Watchlist',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: "GraphikMedium" 
                      ), 
                    ),
                    SizedBox(height: 8.0,),
                    Container(
                      padding: EdgeInsets.all(14.0),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey.shade500,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(6)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/Bitcoin.png',
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 10.0,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Bitcoin',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "GraphikMedium" 
                                    ), 
                                  ),
                                  Text(
                                    'BTC',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey.shade600,
                                      fontFamily: "GraphikMedium" 
                                    ), 
                                  ),
                                ]
                              )
                            ]
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '\$38,650.31',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "GraphikMedium" 
                                    ), 
                                  ),
                                  Text(
                                    '+3.88 %',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.green.shade700,
                                      fontFamily: "GraphikMedium" 
                                    ), 
                                  ),
                                ]
                              )
                            ],
                          )
                        ]
                      ),
                    )
                  ]
                ),
                SizedBox(height: 30.0,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Top movers',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: "GraphikMedium" 
                      ), 
                    ),
                    SizedBox(height: 8.0,),
                    SizedBox(
                      height: 145, // Atur tinggi sesuai kebutuhan
                      child: HorizontalScrollCards(),
                    ),
                  ]
                ),
                SizedBox(height: 30.0,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Learn about Polygon',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: "GraphikMedium" 
                      ), 
                    ),
                    SizedBox(height: 8.0,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/MATIC.png',
                                fit: BoxFit.cover,
                              ),
                              SizedBox(width: 10.0,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Polygon',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "GraphikMedium" 
                                    ), 
                                  ),
                                  Text(
                                    'Earn \$3 MATIC',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey.shade600,
                                      fontFamily: "GraphikMedium" 
                                    ), 
                                  ),
                                ]
                              )
                            ]
                          ),
                          Text(
                            'Watch video',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                              color: Colors.blue,
                              fontFamily: "GraphikMedium" 
                            ), 
                          ),
                        ]
                      ),
                    ),
                    SizedBox(height: 20.0,), 
                    Text(
                      'Building an internet of blockchains',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade600,
                        fontFamily: "GraphikMedium" 
                      ), 
                    ),
                    SizedBox(height: 8.0,),
                    SizedBox(
                      height: 250, // Atur tinggi sesuai kebutuhan
                      child: HorizontalScrollPolygonCards(),
                    ),
                  ]
                ),        
              ],
              ),    
            ],
          ),
        )
      ),
    );
  }
}

class HorizontalScrollCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: cryptoList.length, // Ganti dengan jumlah kartu yang Anda inginkan
      itemBuilder: (BuildContext context, int index) {
        Crypto crypto = cryptoList[index];
        return Card(
          elevation: 0, // Menghilangkan bayangan default Card
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Mengatur borderRadius pada Card
            side: BorderSide(
              color: Colors.grey.shade500,
              width: 1
            )
          ),
          child: Container(
            padding: EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  crypto.logoUrl,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 18.0,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      crypto.name,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: "GraphikMedium" 
                      ), 
                    ),
                    SizedBox(width: 6.0,),
                    Text(
                      crypto.price,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey.shade500,
                        fontFamily: "GraphikMedium" 
                      ), 
                    ),
                  ]
                ),
                Text(
                  crypto.percen,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.green.shade700,
                    fontFamily: "GraphikMedium" 
                  ), 
                ),
              ]
            ), 
          ),
        );
      },
    );
  }
}

class HorizontalScrollPolygonCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: polygonLearn.length, // Ganti dengan jumlah kartu yang Anda inginkan
      itemBuilder: (BuildContext context, int index) {
        PolygonLearner polygon = polygonLearn[index];
        return Card(
          elevation: 0, // Menghilangkan bayangan default Card
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Mengatur borderRadius pada Card
            side: BorderSide(
              color: Colors.grey.shade500,
              width: 1
            )
          ),
          child: Container(
            padding: EdgeInsets.all(14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  polygon.imageUrl,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        color: Colors.grey.shade500, // Warna border
                        width: 1.0, // Lebar border
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 8,),
                      Text(
                        polygon.title,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          fontFamily: "GraphikMedium" 
                        ), 
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            polygon.earn,
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.green.shade700,
                              fontFamily: "GraphikMedium" 
                            ), 
                          ),
                          SizedBox(width: 5,),
                          Text('•'),
                          SizedBox(width: 5,),
                          Text(
                            polygon.time,
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey.shade700,
                              fontFamily: "GraphikMedium" 
                            ), 
                          ),
                        ],
                      )
                    ]
                  )
                ),
              ]
            ), 
          ),
        );
      },
    );
  }
}



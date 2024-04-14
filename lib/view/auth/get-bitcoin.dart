import 'package:flutter/material.dart';

class GetBitcoin extends StatelessWidget {
  const GetBitcoin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(30.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height-30,
        // width: MediaQuery.of(context).size.width,
        // padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Image.asset("assets/images/GetBitcoin.png"),
                SizedBox(height: 32.0,),
                Text("Get \$10 in Bitcoin",
                  style: TextStyle(fontFamily: "GraphikMedium",fontSize: 22.0),
                ),
                SizedBox(height: 8.0,),
                Text("You'll both get \$10 in free Bitcoin when your friend buys or sell \$100 of crypto",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16.0,color: Colors.grey),
                ),
                SizedBox(height: 26.0,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 10.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(5.0))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("coinbase.com/join/xu_mtu",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16.0,color: Colors.grey),),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))
                        ),
                        onPressed: (){},
                        child: Text("Copy",style: TextStyle(fontFamily: "GraphikMediium",fontSize: 16.0),)
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white
                    ),
                    onPressed: (){},
                    child: Text("Share",style: TextStyle(fontFamily: "GraphikMedium",fontSize: 16.0,),)
                  ),
                ),
                SizedBox(height: 16.0,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.blue
                      ),
                    onPressed: (){},
                    child: Text("Terms & Conditions",style: TextStyle(fontFamily: "GraphikMedium",fontSize: 16.0,),)
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

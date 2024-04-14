import 'package:flutter/material.dart';

class OrderSubmitted extends StatelessWidget {
  const OrderSubmitted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white   ,
      appBar: AppBar(),
      body: Container(
        // width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        // padding: EdgeInsets.all(24.0),
        padding: EdgeInsets.all(30.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height-30,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Image.asset("assets/images/OrderSubmitted.png"),
                SizedBox(height: 32.0,),
                Text("Your Order was submitted",
                  style: TextStyle(fontFamily: "GraphikMedium",fontSize: 22.0),
                ),
                SizedBox(height: 8.0,),
                Text("We will send you an email your order status updates",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16.0,color: Colors.grey,),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))
                ),
                onPressed: (){},
                child: Text("View account",style: TextStyle(fontFamily: "GraphikMedium",fontSize: 16.0),),
              ),
            )
          ],
        ),
      ),
    );
  }
}

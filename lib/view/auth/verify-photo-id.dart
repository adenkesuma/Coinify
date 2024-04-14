import 'package:flutter/material.dart';

class VerifyPhotoId extends StatelessWidget {
  const VerifyPhotoId({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          width: 200,
          child: PreferredSize(
            preferredSize: Size.fromHeight(10.0),
            child: Row(
              children: [
                Expanded(
                  child: LinearProgressIndicator(
                    value: 1, // Value for first step
                    backgroundColor: Color(0xD9D9D9D9),
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  ),
                ),
                SizedBox(width: 7.0),
                Expanded(
                  child: LinearProgressIndicator(
                    value: 1, // Value for second step
                    backgroundColor: Color(0xD9D9D9D9),
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  ),
                ),
                SizedBox(width: 7.0),
                Expanded(
                  child: LinearProgressIndicator(
                    value: 0.35, // Value for third step
                    backgroundColor: Color(0xD9D9D9D9),
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height-30,
        // width: MediaQuery.of(context).size.width,
        // padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset("assets/images/VerifyPhotoId.png"),
                SizedBox(height: 32.0,),
                Text("Verify your Photo ID",style: TextStyle(fontFamily: "GraphikMedium",fontSize: 22.0),),
                SizedBox(height: 12.0,),
                Text("Financial regulations require us to verify your ID. This helps prevent someone else from creating a "
                    "Coinbase account in your name",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16.0,color: Colors.grey),),
                SizedBox(height: 12.0,),
                Text("After this step, you'll be ready to start trading crypto!",
                  style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16.0, color: Colors.grey),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                ),
                child: Text("Continue",style: TextStyle(fontFamily: "GraphikMedium",fontSize: 16.0),),
              ),
            )
          ],
        ),
      ),
    );
  }
}

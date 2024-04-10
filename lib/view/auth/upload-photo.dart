import 'package:flutter/material.dart';

class UploadPhoto extends StatelessWidget {
  const UploadPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.fromLTRB(24, 24, 24, 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Image.asset("assets/images/UploadPhoto.png"),
                SizedBox(height: 32.0,),
                Text("Update your photo to earn rewards",
                  style: TextStyle(fontFamily: "GraphikMedium",fontSize: 22.0,),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8.0,),
                Text("To earn rewards from coinbase, you need to upload your photo. This is different from account verification "
                    "which you might have completed",
                  style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16.0,color: Colors.grey),
                  textAlign: TextAlign.center,
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
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))
                      ),
                      onPressed: (){},
                      child: Text("Continue",style: TextStyle(fontFamily: "GraphikMedium",fontSize: 16.0),),
                    )
                ),
                SizedBox(height: 16.0,),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))
                      ),
                      onPressed: (){},
                      child: Text("View lesson without learning ",style: TextStyle(fontFamily: "GraphikMedium",fontSize: 16.0),),
                    )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

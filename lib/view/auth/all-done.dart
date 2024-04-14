import 'package:flutter/material.dart';

class AllDone extends StatelessWidget {
  const AllDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(30.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height-30,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*1/5),
                  child: Image.asset("assets/images/AllDone.png"),
                ),
                SizedBox(height: 32.0,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("All Done",style: TextStyle(fontSize: 22,fontFamily: "GraphikMedium"),),
                      SizedBox(height: 8.0,),
                      Text("Congratulations! Your account has been successfully added",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16.0,color: Colors.grey),),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: (){},
              child: Text(
                "Done",
                style: TextStyle(fontFamily: "GraphikMedium",fontSize: 16.0),
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))
                ),
                minimumSize: MaterialStateProperty.all(Size.fromHeight(60.0)),
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}

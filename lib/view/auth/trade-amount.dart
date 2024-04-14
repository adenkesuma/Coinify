import 'package:flutter/material.dart';

class TradeAmount extends StatelessWidget {
  const TradeAmount({super.key});

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
              crossAxisAlignment: CrossAxisAlignment.center,
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
                    value: 0.25, // Value for third step
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
        // padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        // width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("How much crypto do you expect to trade per year?",style: TextStyle(fontFamily: "GraphikMedium",fontSize: 22.0),),
            SizedBox(height: 18.0,),
            Text("Coinbase is legally required to collect this information. If you're not employed or your industry isn't, "
                "select Other.",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16.0,color: Colors.grey),),
            SizedBox(height: 32.0,),
            Container(
              height: 40,
              child: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/id-type');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("< \$1,000",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16.0)),
                    Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                  ],
                )
              ),
            ),
            SizedBox(height: 16.0,),
            Container(
              height: 40,
              child: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/id-type');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$1,000 - \$9,999",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16.0)),
                      Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                    ],
                  )
              ),
            ),
            SizedBox(height: 16.0,),
            Container(
              height: 40,
              child: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/id-type');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$10,000 - \$99,999",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16.0)),
                      Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                    ],
                  )
              ),
            ),
            SizedBox(height: 16.0,),
            Container(
              height: 40,
              child: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/id-type');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("> \$100,000",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16.0)),
                      Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                    ],
                  )
              ),
            ),
          ],
        ),
      )
    );
  }
}

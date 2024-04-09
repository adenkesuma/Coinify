import 'package:flutter/material.dart';

class UserPurpose extends StatelessWidget {
  const UserPurpose({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
       title: const PreferredSize(
          preferredSize: Size.fromHeight(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 120.0),
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
              SizedBox(width: 120.0),
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.0,vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("What will you use Coinbase for?",style: TextStyle(fontSize: 22.0,fontFamily: "GraphikMedium"),),
            SizedBox(height: 12.0,),
            Text("Federal regulations require us to ask this question",
              style: TextStyle(fontSize: 16.0,fontFamily: "GraphikRegular",color: Colors.grey),
            ),
            SizedBox(height: 32.0,),
            Container(
              height: 50,
              child: InkWell(
                onTap: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Investing",style: TextStyle(fontSize: 16.0,fontFamily: "GraphikRegular"),),
                    Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0,),
            Container(
              height: 50,
              child: InkWell(
                onTap: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Trading on Coinbase",style: TextStyle(fontSize: 16.0,fontFamily: "GraphikRegular"),),
                    Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0,),
            Container(
              height: 50,
              child: InkWell(
                onTap: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Trading on other exchanges",style: TextStyle(fontSize: 16.0,fontFamily: "GraphikRegular"),),
                    Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0,),
            Container(
              height: 50,
              child: InkWell(
                onTap: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Online purchases",style: TextStyle(fontSize: 16.0,fontFamily: "GraphikRegular"),),
                    Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0,),
            Container(
              height: 50,
              child: InkWell(
                onTap: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Payment to friends",style: TextStyle(fontSize: 16.0,fontFamily: "GraphikRegular"),),
                    Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0,),
            Container(
              height: 50,
              child: InkWell(
                onTap: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Online payments",style: TextStyle(fontSize: 16.0,fontFamily: "GraphikRegular"),),
                    Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0,),
            Container(
              height: 50,
              child: InkWell(
                onTap: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Business",style: TextStyle(fontSize: 16.0,fontFamily: "GraphikRegular"),),
                    Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

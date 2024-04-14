import 'package:flutter/material.dart';

class IdType extends StatelessWidget {
  const IdType({super.key});

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
                    value: 0.6, // Value for third step
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
        // height: MediaQuery.of(context).size.height,
        // padding: EdgeInsets.symmetric(horizontal: 24.0,vertical: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Select your ID type",style: TextStyle(fontFamily: "GraphikMedium",fontSize: 22.0),),
                SizedBox(height: 12.0,),
                Text("We'll take 2 pictures of your ID. What type of ID do you want to use?",
                  style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16.0,color: Colors.grey),
                ),
                SizedBox(height: 32.0,),
                Container(
                  height: 50,
                  child: InkWell(
                    onTap: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/fluent_contact-card-28-regular.png",width: 24,),
                            SizedBox(width: 16.0,),
                            Text("ID Card",style: TextStyle(fontSize: 16.0,fontFamily: "GraphikRegular"),),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  height: 50,
                  child: InkWell(
                    onTap: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/fluent_contact-card-28-regular.png",width: 24,),
                            SizedBox(width: 16.0,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Driver's License",style: TextStyle(fontSize: 16.0,fontFamily: "GraphikRegular"),),
                                Text("Recommend",style: TextStyle(fontSize: 14.0,fontFamily: "GraphikRegular",color: Colors.grey),)
                              ],
                            )
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Container(
                  height: 50,
                  child: InkWell(
                    onTap: (){},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/fluent_contact-card-28-regular.png",width: 24,),
                            SizedBox(width: 16.0,),
                            Text("Passport",style: TextStyle(fontSize: 16.0,fontFamily: "GraphikRegular"),),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Text("Your photo ID and actions captured during the ID verification process may constitute biometric data. "
                    "Please see our Privacy Policy for more information about how we store and use your biometric data.",
                    style: TextStyle(fontFamily: "GraphikRegular",fontSize: 14.0,color: Colors.grey),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*1/100,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

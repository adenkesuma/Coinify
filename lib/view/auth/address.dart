import 'package:flutter/material.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  FocusNode addressText = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          bottom: const PreferredSize(
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
                    value: 0.15, // Value for third step
                    backgroundColor: Color(0xD9D9D9D9),
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  ),
                ),
                SizedBox(width: 120.0),
              ],
            ),
          )
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.0,vertical: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Text("Enter your address",style: TextStyle(fontSize: 22,fontFamily: "GraphikMedium"),),
                SizedBox(height: 12,),
                Text("Enter the street address of your primary residence. Please do not use a PO box or business address",
                style: TextStyle(color: Colors.grey,fontSize: 16),),
                SizedBox(height: 24,),
                Text("Search for Address",style: TextStyle(fontSize: 16.0,fontFamily: "GraphikMedium",
                    color: addressText.hasFocus ? Colors.blue : Colors.black),
                ),
                SizedBox(height: 8.0,),
                Focus(
                  onFocusChange: (focus){
                    setState(() {});
                  },
                  child: TextFormField(
                    focusNode: addressText,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue)
                      ),
                      hintText: "Enter your address",
                      hintStyle: TextStyle(color: Colors.grey)
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                Container(
                  height: 50,
                  child: InkWell(
                    onTap: (){
                    },
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text("Enter Address Manually",style: TextStyle(fontSize: 16),),
                        Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,foregroundColor: Colors.white),
                child: Text("Continue",style: TextStyle(fontSize: 16.0),),
              ),
            )
          ],
        ),
      ),
    );
  }
}

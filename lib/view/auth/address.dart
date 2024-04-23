import 'package:flutter/material.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  FocusNode addressText = FocusNode();
  bool _enterAddressManually = false;
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
                    value: 0.15, // Value for third step
                    backgroundColor: Color(0xD9D9D9D9),
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  ),
                ),
              ],
            ),
          ),
        )
      ),
      body: SingleChildScrollView(
        child: Container(
          // padding: EdgeInsets.symmetric(horizontal: 24.0,vertical: 12.0),
          padding: EdgeInsets.all(30.0),
          width: MediaQuery.of(context).size.width,
          height: _enterAddressManually ? MediaQuery.of(context).size.height : MediaQuery.of(context).size.height-(1/9*MediaQuery.of(context).size.height),
          // height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  Theme(
                    data: ThemeData().copyWith(dividerColor: Colors.transparent),
                    child: ListTileTheme(
                      contentPadding: EdgeInsets.all(0.0),
                      child: ExpansionTile(
                        title: Text("Enter Address Manually",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16.0),),
                        onExpansionChanged: (bool value) {
                          setState(() {
                            _enterAddressManually = value;
                          });
                        },
                        children: [
                          ListTile(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Street address",style: TextStyle(fontFamily: "GraphikMedium",fontSize: 16.0),),
                                SizedBox(height: 8.0,),
                                TextFormField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                                    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue))
                                  ),
                                ),
                                SizedBox(height: 16.0,),
                                Text("Apt, suite, etc (optional)",style: TextStyle(fontFamily: "GraphikMedium",fontSize: 16.0),),
                                SizedBox(height: 8.0,),
                                TextFormField(
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue))
                                  ),
                                ),
                                SizedBox(height: 16.0,),
                                Text("City",style: TextStyle(fontFamily: "GraphikMedium",fontSize: 16.0),),
                                SizedBox(height: 8.0,),
                                TextFormField(
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue))
                                  ),
                                ),
                                SizedBox(height: 16.0,),
                                Text("Country",style: TextStyle(fontFamily: "GraphikMedium",fontSize: 16.0),),
                                SizedBox(height: 8.0,),
                                TextFormField(
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue))
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ]
        ),
            ]
      ),
        ),
      
    ),
    );
    
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

class _AddressState extends State<Address> {
  FocusNode addressText = FocusNode();
<<<<<<< HEAD
  bool _enterAddressManually = false;
=======
  bool _open = false;
>>>>>>> fa25290e2fd01432b938ba9ee94888dd81d83bd5
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
<<<<<<< HEAD
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
=======
          height: _open ? MediaQuery.of(context).size.height-1/9*(MediaQuery.of(context).size.height)+100 : MediaQuery.of(context).size.height-1/9*(MediaQuery.of(context).size.height),
          // height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      borderSide: BorderSide(color: Colors.grey),
>>>>>>> fa25290e2fd01432b938ba9ee94888dd81d83bd5
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue)
                    ),
                    hintText: "Enter your address",
                    hintStyle: TextStyle(color: Colors.grey)
                  ),
<<<<<<< HEAD
                  SizedBox(height: 40,),
                  Theme(
                    data: ThemeData().copyWith(dividerColor: Colors.transparent),
                    child: ListTileTheme(
                      contentPadding: EdgeInsets.all(0.0),
=======
                ),
              ),
              SizedBox(height: 40,),
              Expanded(
                child: SingleChildScrollView(
                  child: Theme(
                    data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                    child: ListTileTheme(
                      contentPadding: EdgeInsets.all(0),
                      dense: true,
>>>>>>> fa25290e2fd01432b938ba9ee94888dd81d83bd5
                      child: ExpansionTile(
                        title: Text("Enter Address Manually",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16.0),),
                        onExpansionChanged: (bool value) {
                          setState(() {
<<<<<<< HEAD
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
=======
                            _open = value;
                          });
                        },
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 8.0,),
                                Text("Address line 1",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16.0),),
                                TextFormField(
                                  decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey)
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.blue),
                                    )
                                  ),
                                ),
                                SizedBox(height: 8.0,),
                                Text("Address line 2 (optional)",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16.0),),
                                TextFormField(
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.grey)
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.blue),
                                      )
                                  ),
                                ),
                                SizedBox(height: 8.0,),
                                Text("City",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16.0),),
                                TextFormField(
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.grey)
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.blue),
                                      )
                                  ),
                                ),
                                SizedBox(height: 8.0,),
                                Text("City",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16.0),),
                                TextFormField(
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.grey)
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.blue),
                                      )
>>>>>>> fa25290e2fd01432b938ba9ee94888dd81d83bd5
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
                ),
<<<<<<< HEAD
              ],
            ),
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   child: ElevatedButton(
            //     onPressed: (){
            //       Navigator.pushNamed(context, '/user-purpose');
            //     },
            //     child: Text(
            //       "Continue",
            //       style: TextStyle(
            //         fontSize: 14.0,
            //         fontWeight: FontWeight.normal,
            //         color: Colors.white,
            //         fontFamily: "GraphikMedium",
            //       ),
            //     ),
            //     style: ButtonStyle(
            //       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            //         RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))
            //       ),
            //       minimumSize: MaterialStateProperty.all(Size.fromHeight(60.0)),
            //       backgroundColor: MaterialStateProperty.all(Colors.blue),
            //       shadowColor: MaterialStateProperty.all(Colors.transparent)
            //     ),
            //   ),
            // )
          ),
        ),
      // ),
=======
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/user-purpose');
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                      fontFamily: "GraphikMedium",
                    ),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))
                    ),
                    minimumSize: MaterialStateProperty.all(Size.fromHeight(60.0)),
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    shadowColor: MaterialStateProperty.all(Colors.transparent)
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      // floatingActionButton: Container(
      //   width: MediaQuery.of(context).size.width,
      //   padding: EdgeInsets.fromLTRB(60, 0, 30, 0),
      //   child: FloatingActionButton(
      //     onPressed: (){},
      //   ),
      // )
>>>>>>> fa25290e2fd01432b938ba9ee94888dd81d83bd5
    );
  }
}

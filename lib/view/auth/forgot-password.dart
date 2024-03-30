import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class ForgotPassword extends StatefulWidget {
  ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController phoneNumberInput = TextEditingController();
  bool _isPhoneNumber = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(""),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 24,vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Forgot Password",style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                  SizedBox(height: 10.0,),
                  Text("Please enter your mobile number to get OTP.",style: TextStyle(fontSize: 16),),
                  SizedBox(height: 20.0,),
                  Text("Phone Number",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                  SizedBox(height: 5.0,),
                  IntlPhoneField(
                    controller: phoneNumberInput,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                      errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                      focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                      errorText: _isPhoneNumber ? null : "Phone Number must not be empty",
                    ),
                    initialCountryCode: "US",
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: (){
                      setState(() {
                        // FocusScope.of(context).unfocus();
                        if(phoneNumberInput.text == ""){_isPhoneNumber = false;}
                        else{_isPhoneNumber = true;}
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                    ),
                    child: Text("Continue",style: TextStyle(fontSize: 17.0),),
                  ),
                ),
                SizedBox(height: 10.0,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
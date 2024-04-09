import 'package:defi/view/auth/sign-in.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class ForgotPassword extends StatefulWidget {
  ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  FocusNode phoneNumberText = FocusNode();
  TextEditingController phoneNumberInput = TextEditingController();
  bool _isPhoneNumber = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(""),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height-100,
          padding: EdgeInsets.symmetric(horizontal: 24,vertical: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Forgot Password",style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, fontFamily: "GraphikMedium",),),
                    SizedBox(height: 10.0,),
                    Text("Please enter your mobile number to get OTP.",style: TextStyle(fontSize: 16,color: Colors.grey),),
                    SizedBox(height: 20.0,),
                    Text("Phone Number",style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        fontFamily: "GraphikMedium",
                        color: phoneNumberText.hasFocus ? Colors.blue : Colors.black),
                    ),
                    SizedBox(height: 5.0,),
                    Focus(
                      onFocusChange: (focus){
                        setState(() {});
                      },
                      child: IntlPhoneField(
                        focusNode: phoneNumberText,
                        controller: phoneNumberInput,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                          errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                          focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                          errorText: _isPhoneNumber ? null : "Phone Number must not be empty",
                        ),
                        initialCountryCode: "US",
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],

                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: (){
                        setState(() {
                          // FocusScope.of(context).unfocus();
                          if(phoneNumberInput.text == ""){_isPhoneNumber = false;}
                          else{_isPhoneNumber = true;}
                          if(_isPhoneNumber){Navigator.of(context).push(MaterialPageRoute(builder: (context) => Verification(),));}
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blueAccent,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                      ),
                      child: Text("Continue",style: TextStyle(fontSize: 16.0),),
                    ),
                  ),
                  SizedBox(height: 10.0,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  FocusNode codeText = FocusNode();
  TextEditingController codeInput = TextEditingController();
  bool _iscode = true;
  bool _validcode = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(""),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height-100,
          padding: EdgeInsets.symmetric(horizontal: 24,vertical: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Verification",style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,fontFamily: "GraphikMedium"),),
                  SizedBox(height: 10.0,),
                  Text("Enter 7-digit code we just texted to your phone number",
                    style: TextStyle(fontSize: 16,color: Colors.grey),
                  ),
                  SizedBox(height: 20.0,),
                  Text("Code",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "GraphikMedium",
                      fontWeight: FontWeight.w500,
                      color: codeText.hasFocus ? Colors.blue : Colors.black
                    ),
                  ),
                  SizedBox(height: 5.0,),
                  Focus(
                    onFocusChange: (focus){
                      setState(() {});
                    },
                    child: TextFormField(
                      controller: codeInput,
                      focusNode: codeText,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                        errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        errorText: _iscode ? _validcode ? null : "Code is not valid" : "Code must not be empty",
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: (){
                          setState(() {
                            if(codeInput.text == ""){_iscode = false;}
                            else{_iscode = true;}
                            if(codeInput.text.length != 7){_validcode = false;}
                            else{_validcode = true;}
                            if(_iscode && _validcode){Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => CreateNewPassword(),));
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))
                        ),
                        child: Text("Continue",style: TextStyle(fontSize: 16.0),)),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))
                        ),
                        child: Text("Resend Code",style: TextStyle(fontSize: 16.0),)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({super.key});

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  FocusNode newPasswordText = FocusNode();
  FocusNode confirmNewPasswordText = FocusNode();
  bool _isNewPasswordVisible = false;
  bool _isConfirmNewPasswordVisible = false;
  bool _isNewPassword = true;
  bool _isConfirmNewPassword = true;
  TextEditingController newPasswordInput = TextEditingController();
  TextEditingController confirmNewPasswordInput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(""),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - 100,
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Create New Password", style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        fontFamily: "GraphikMedium"
                    ),),
                    SizedBox(height: 10.0,),
                    Text("Create new password for your account", style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),),
                    SizedBox(height: 20.0,),
                    Text("New Password",style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      fontFamily: "GraphikMedium",
                      color: newPasswordText.hasFocus ? Colors.blue : Colors.black,
                    ),),
                    SizedBox(height: 5.0,),
                    Focus(
                      onFocusChange: (focus){
                        setState(() {});
                      },
                      child: TextFormField(
                        obscureText: !_isNewPasswordVisible,
                        focusNode: newPasswordText,
                        controller: newPasswordInput,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                          errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                          focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                          errorText: _isNewPassword ? null : "New Password must not be empty",
                          suffixIcon: GestureDetector(
                            onTap: (){
                              setState(() {
                                _isNewPasswordVisible = !_isNewPasswordVisible;
                              });
                            },
                            child: Icon(_isNewPasswordVisible ? Icons.visibility : Icons.visibility_off,),
                          )
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0,),
                    Text("Confirm New Password",style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      fontFamily: "GraphikMedium",
                      color: newPasswordText.hasFocus ? Colors.blue : Colors.black,
                    ),),
                    SizedBox(height: 5.0,),
                    Focus(
                      onFocusChange: (focus){
                        setState(() {});
                      },
                      child: TextFormField(
                        obscureText: !_isConfirmNewPasswordVisible,
                        controller: confirmNewPasswordInput,
                        focusNode: confirmNewPasswordText,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                            errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                            suffixIcon: GestureDetector(
                              onTap: (){
                                setState(() {
                                  _isConfirmNewPasswordVisible = !_isConfirmNewPasswordVisible;
                                });
                              },
                              child: Icon(_isConfirmNewPasswordVisible ? Icons.visibility : Icons.visibility_off,),
                            )
                        ),
                      ),
                    ),
                  ],
                )
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: ElevatedButton(
                  onPressed: (){
                    setState(() {
                      if(newPasswordInput.text == ""){_isNewPassword = false;}
                      else{_isNewPassword = true;}
                      if(confirmNewPasswordInput.text == ""){_isConfirmNewPassword = false;}
                      else{_isConfirmNewPassword = true;}
                      print(_isNewPassword);
                      if(_isNewPassword && _isConfirmNewPassword){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignIn(),));
                      }
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))
                  ),
                  child: Text("Continue",style: TextStyle(fontSize: 16.0),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
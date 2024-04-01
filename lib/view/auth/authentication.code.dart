import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class AuthenticationCode extends StatefulWidget {
  const AuthenticationCode({Key? key}) : super(key: key);

  @override
  _AuthenticationCodeState createState() => _AuthenticationCodeState();
}

class _AuthenticationCodeState extends State<AuthenticationCode> {
  bool _isDigitCode = true;

  FocusNode digitCodeText = FocusNode();

  TextEditingController digitCodeInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: const PreferredSize(
          preferredSize: Size.fromHeight(10.0),
          child: Row(
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
                  value: 0.8, // Value for second step
                  backgroundColor: Color(0xD9D9D9D9),
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                ),
              ),
              SizedBox(width: 7.0),
              Expanded(
                child: LinearProgressIndicator(
                  value: 0.0, // Value for third step
                  backgroundColor: Color(0xD9D9D9D9),
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                ),
              ),
              SizedBox(width: 120.0),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          height: MediaQuery.of(context).size.height-90,
          padding: EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        'Enter authentication code',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                          fontFamily: "GraphikMedium"
                        )
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Enter the 7-digit code we just texted to your phone number',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey[700]
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Code',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                            color: digitCodeText.hasFocus ? Colors.blue : Colors.black,
                            fontFamily: "GraphikMedium"
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Focus(
                          onFocusChange: (focus){
                            setState(() {});
                          },
                          child: TextFormField(
                            controller: digitCodeInput,
                            focusNode: digitCodeText,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.blue)
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red)
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red)
                              ),
                              hintText: 'Your digit code',
                              errorText: _isDigitCode ? null : "Digit code must not be empty",
                            ),
                          ),
                        )
                      ],
                    ),
                  ]
                ),
              ),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if(digitCodeInput.text == ""){_isDigitCode = false;}
                        else{_isDigitCode = true;}

                        if(_isDigitCode == true){
                          Navigator.pushNamed(context, '/citizenship');
                        }
                      });
                    },
                    child: Text(
                      'Continue',
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
                  SizedBox(height: 14),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '');
                    }, 
                    child: Text(
                      'Resend code',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        fontFamily: "GraphikMedium",
                      ),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        )
                      ),
                      minimumSize: MaterialStateProperty.all(Size.fromHeight(60.0)),
                      shadowColor: MaterialStateProperty.all(Colors.transparent),
                      side: MaterialStateProperty.all(
                        BorderSide(color: Colors.grey, width: 1)
                      )
                    ),
                  ),
                ],
              )
            ],
          )
        ),
      )
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class TwoStepVerification extends StatefulWidget {
  const TwoStepVerification({Key? key}) : super(key: key);

  @override
  _TwoStepVerificationState createState() => _TwoStepVerificationState();
}

class _TwoStepVerificationState extends State<TwoStepVerification> {
  bool _isPhone = true;

  FocusNode phoneText = FocusNode();

  TextEditingController phoneInput = TextEditingController();

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
                    value: 0.5, // Value for second step
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
              ],
            ),
          ),
        ),
      ),
      body: 
        // physics: NeverScrollableScrollPhysics(),
        Container(
          height: MediaQuery.of(context).size.height-30,
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
                        'Set up 2-step verification',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                          fontFamily: "GraphikMedium"
                        )
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Enter your phone number so we can text you an authentication code.',
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
                          'Phone',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                            color: phoneText.hasFocus ? Colors.blue : Colors.black,
                            fontFamily: "GraphikMedium"
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Focus(
                          onFocusChange: (focus){
                            setState(() {});
                          },
                          child: TextFormField(
                            controller: phoneInput,
                            focusNode: phoneText,
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
                              hintText: 'Your phone number',
                              errorText: _isPhone ? null : "Phone number must not be empty",
                            ),
                          ),
                        )
                      ],
                    ),
                  ]
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if(phoneInput.text == ""){_isPhone = false;}
                    else{_isPhone = true;}

                    if(_isPhone == true){
                      Navigator.pushNamed(context, '/authentication-code');
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
              )
            ],
          )
      )
    );
  }
}
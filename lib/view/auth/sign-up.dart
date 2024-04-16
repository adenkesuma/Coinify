import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isPasswordVisible = false;
  bool isChecked = false;
  bool _isFirstName = true;
  bool _isLastName = true;
  bool _isEmail = true;
  bool _isPassword = true;
  bool _validPassword = true;

  FocusNode firstNameText = FocusNode();
  FocusNode lastNameText = FocusNode();
  FocusNode emailText = FocusNode();
  FocusNode passwordText = FocusNode();

  TextEditingController firstNameInput = TextEditingController();
  TextEditingController lastNameInput = TextEditingController();
  TextEditingController emailInput = TextEditingController();
  TextEditingController passwordInput = TextEditingController();

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
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: LinearProgressIndicator(
                      value: 0.35, // Value for first step
                      backgroundColor: Color(0xD9D9D9D9),
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                    ),
                  ),
                  SizedBox(width: 7.0),
                  Expanded(
                    child: LinearProgressIndicator(
                      value: 0.0, // Value for second step
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
            padding: EdgeInsets.all(30.0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height-30,
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
                              'Create your account',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24.0,
                                  fontFamily: "GraphikMedium"
                              )
                          ),
                          SizedBox(height: 20.0),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'First Name',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.0,
                                    color: firstNameText.hasFocus ? Colors.blue : Colors.black,
                                    fontFamily: "GraphikMedium"
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Focus(
                                onFocusChange: (focus){
                                  setState(() {});
                                },
                                child: TextFormField(
                                  controller: firstNameInput,
                                  focusNode: firstNameText,
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
                                    hintText: 'Enter your first name',
                                    errorText: _isFirstName ? null : "First Name must not be empty",
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 20.0),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Last Name',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.0,
                                  color: lastNameText.hasFocus ? Colors.blue : Colors.black,
                                  fontFamily: "GraphikMedium",
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Focus(
                                onFocusChange: (focus){
                                  setState(() {});
                                },
                                child: TextField(
                                    controller: lastNameInput,
                                    focusNode: lastNameText,
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
                                      hintText: 'Enter your last name',
                                      errorText: _isLastName ? null : "Last Name must not be empty",
                                    )
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 20.0),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Email',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.0,
                                  color: emailText.hasFocus ? Colors.blue : Colors.black,
                                  fontFamily: "GraphikMedium",
                                ),
                              ),
                              SizedBox(height: 8.0),
                              Focus(
                                onFocusChange: (focus){
                                  setState(() {});
                                },
                                child: TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  controller: emailInput,
                                  focusNode: emailText,
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
                                    hintText: 'Enter your email',
                                    errorText: _isEmail ? null : "Email must not be empty",
                                  ),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            'Password',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0,
                              color: passwordText.hasFocus ? Colors.blue : Colors.black,
                              fontFamily: "GraphikMedium",
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Focus(
                            onFocusChange: (focus){
                              setState(() {});
                            },
                            child: TextField(
                              controller: passwordInput,
                              focusNode: passwordText,
                              obscureText: !isPasswordVisible,
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
                                hintText: 'Enter your password',
                                errorText: _isPassword ? _validPassword ? null : "Password must be at least 8 characters" : "Password must not be empty",
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isPasswordVisible = !isPasswordVisible;
                                    });
                                  },
                                  child: Icon(
                                    isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.zero,
                          child: CheckboxListTile(
                            value: isChecked,
                            title: Text(
                              'I certify that I am 18 years of age or older, and I agree to the User Agreement and Privacy Policy',
                              style: TextStyle(fontSize: 14.0),
                            ),
                            onChanged: (value) {
                              setState(() {
                                isChecked = !isChecked;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,
                            activeColor: Colors.blue,
                            checkColor: Colors.white,
                            tristate: true,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if(firstNameInput.text == ""){_isFirstName = false;}
                              else{_isFirstName = true;}
                              if(lastNameInput.text == ""){_isLastName = false;}
                              else{_isLastName = true;}
                              if(emailInput.text == ""){_isEmail = false;}
                              else{_isEmail = true;}
                              if(passwordInput.text == ""){_isPassword = false;}
                              else{_isPassword = true;}
                              if(passwordInput.text.length < 8){_validPassword = false;}
                              else{_validPassword = true;}
                              if(_isFirstName && _isLastName && _isEmail && _isPassword && _validPassword){
                                Navigator.pushNamed(context, '/verify-email');
                              }
                            });
                          },
                          child: Text(
                            "Start",
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
                    ),
                  ]
              )
        )
    );
  }
}
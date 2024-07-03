import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isPasswordVisible = false;
  bool isChecked = false;
  bool isFirstName = true;
  bool isLastName = true;
  bool isEmail = true;
  bool validEmail = true;
  bool isPassword = true;
  bool validPassword = true;

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
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: SizedBox(
          width: 200,
          child: PreferredSize(
            preferredSize: Size.fromHeight(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
      body: SingleChildScrollView(
        // reverse: true,
        // physics: NeverScrollableScrollPhysics(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height-(1/9*MediaQuery.of(context).size.height),
          padding: EdgeInsets.symmetric(horizontal: 24.0,vertical: 12.0,),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Create your account",
                    style: TextStyle(fontFamily: "GraphikMedium",fontSize: 22,),
                  ),
                  SizedBox(height: 32.0,),
                  Text(
                    "First Name",
                    style: TextStyle(fontFamily: "GraphikMedium",fontSize: 16,color: firstNameText.hasFocus ? Colors.blue : Colors.black),
                  ),
                  SizedBox(height: 8.0,),
                  Focus(
                    onFocusChange: (focus){
                      setState(() {});
                    },
                    child: TextFormField(
                      controller: firstNameInput,
                      focusNode: firstNameText,
                      decoration: InputDecoration(
                        errorText: isFirstName ? null : "This field must not be empty",
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                        errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red))
                      ),
                    )
                  ),
                  SizedBox(height: 16.0,),
                  Text(
                    "Last Name",
                    style: TextStyle(fontFamily: "GraphikMedium",fontSize: 16,color: lastNameText.hasFocus ? Colors.blue : Colors.black),
                  ),
                  SizedBox(height: 8.0,),
                  Focus(
                    onFocusChange: (focus){
                      setState(() {});
                    },
                    child: TextFormField(
                      focusNode: lastNameText,
                      controller: lastNameInput,
                      decoration: InputDecoration(
                        errorText: isLastName ? null : "This field must not be empty",
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                        errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red))
                      ),
                    )
                  ),
                  SizedBox(height: 16.0,),
                  Text(
                    "Email",
                    style: TextStyle(fontFamily: "GraphikMedium",fontSize: 16,color: emailText.hasFocus ? Colors.blue : Colors.black),
                  ),
                  SizedBox(height: 8.0,),
                  Focus(
                    onFocusChange: (focus){
                      setState(() {});
                    },
                    child: TextFormField(
                      focusNode: emailText,
                      controller: emailInput,
                      decoration: InputDecoration(
                        errorText: isEmail ? validEmail ? null : "Please input a valid email" : "This field must not be empty",
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                        errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red))
                      ),
                    )
                  ),
                  SizedBox(height: 16.0,),
                  Text(
                    "Password",
                    style: TextStyle(fontFamily: "GraphikMedium",fontSize: 16,color: passwordText.hasFocus ? Colors.blue : Colors.black),
                  ),
                  SizedBox(height: 8.0,),
                  Focus(
                    onFocusChange: (focus){
                      setState(() {});
                    },
                    child: TextFormField(
                      focusNode: passwordText,
                      controller: passwordInput,
                      obscureText: !isPasswordVisible,
                      decoration: InputDecoration(
                        errorText: isPassword ? null : "This field must not be empty",
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                        errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
                        suffixIcon: GestureDetector(
                          onTap: (){
                            setState(() {
                              isPasswordVisible = !isPasswordVisible;
                            });
                          },
                          child: Icon(isPasswordVisible ? Icons.visibility : Icons.visibility_off),
                        )
                      ),
                    ),
                  ),
                  SizedBox(height: 36.0,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: Checkbox(
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          activeColor: Colors.blue,
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                      ),
                      SizedBox(width: 7,),
                      Flexible(
                        child: Text(
                          "I certify that I am 18 years of age or older, and I agree to the User Agreement and Privacy Policy",
                          style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16.0),
                        )
                      )
                    ],
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    isFirstName = firstNameInput.text.isNotEmpty;
                    isLastName = firstNameInput.text.isNotEmpty;
                    isPassword = passwordInput.text.isNotEmpty;
                    isEmail = emailInput.text.isNotEmpty;
                    isPassword = passwordInput.text.isNotEmpty;
                    const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
                      r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
                      r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
                      r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
                      r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
                      r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
                      r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
                    final regex = RegExp(pattern);
                    validEmail = regex.hasMatch(emailInput.text);
                    if(isFirstName && isLastName && isEmail && isPassword && isPassword && validEmail) Navigator.pushNamed(context, '/verify-email');
                  });
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))
                  ),
                  minimumSize: MaterialStateProperty.all(Size.fromHeight(60.0)),
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  shadowColor: MaterialStateProperty.all(Colors.transparent),
                ),
                child: Text(
                  "Continue",
                  style: TextStyle(fontFamily: "GraphikMedium",fontSize: 18.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
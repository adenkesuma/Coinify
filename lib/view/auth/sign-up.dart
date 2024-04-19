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
      // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Container(
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
                      focusNode: firstNameText,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
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
                    focusNode: lastNameText,
                    child: TextFormField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
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
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
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
                      obscureText: !isPasswordVisible,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
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
                onPressed: (){Navigator.pushNamed(context, '/verify-email');},
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
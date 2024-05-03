import 'package:date_field/date_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({Key? key}) : super(key: key);

  @override
  _PersonalInformationState createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  DateTime? selectedDate;

  bool _isFirstName = true;
  bool _isLastName = true;
  bool _isBirthDate = true;

  FocusNode firstNameText = FocusNode();
  FocusNode lastNameText = FocusNode();
  FocusNode birthDateText = FocusNode();

  TextEditingController firstNameInput = TextEditingController();
  TextEditingController lastNameInput = TextEditingController();
  TextEditingController birthdateInput = TextEditingController();

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
                    value: 1, // Value for second step
                    backgroundColor: Color(0xD9D9D9D9),
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  ),
                ),
                SizedBox(width: 7.0),
                Expanded(
                  child: LinearProgressIndicator(
                    value: 0.2, // Value for third step
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
                        'Enter your personal information',
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
                          'Legal first name',
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
                          'Legal last name',
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
                    Text(
                      'Date of birth',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                        color: birthDateText.hasFocus ? Colors.blue : Colors.black,
                        fontFamily: "GraphikMedium",
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Focus(
                      onFocusChange: (focus){
                        setState(() {});
                      },
                      child: DateTimeFormField(
                        // controller: birthdateInput,
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
                          hintText: 'MM/DD/YYYY',
                          hintStyle: TextStyle(
                            height: 2.0,
                          ),
                          suffixIcon: GestureDetector(
                            child: Icon(
                              Icons.lock
                            ),
                          ),
                        ),
                        firstDate: DateTime.now().add(const Duration(days: 10)),
                        lastDate: DateTime.now().add(const Duration(days: 40)),
                        initialPickerDateTime: DateTime.now().add(const Duration(days: 20)),
                        onChanged: (DateTime? value) {
                          selectedDate = value;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // setState(() {
                  //   if(firstNameInput.text == ""){_isFirstName = false;}
                  //   else{_isFirstName = true;}
                  //   if(lastNameInput.text == ""){_isLastName = false;}
                  //   else{_isLastName = true;}
                  //   if(birthdateInput.text == ""){_isBirthDate = false;}
                  //   else{_isBirthDate = true;}
                  //   if(_isFirstName && _isLastName && _isBirthDate){
                  //   }
                  // });
                      Navigator.pushNamed(context, '/address');
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
              )
            ]
          )
        ),
    );
  }
}
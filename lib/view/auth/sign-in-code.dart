import 'package:defi/menu-screens/home-menu.dart';
import 'package:defi/view/home.dart';
import 'package:flutter/material.dart';

class SignInCode extends StatelessWidget {
  const SignInCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Enter the 7-digit code we texted to +xx xxxx xx88',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0
                  )
                ),
                SizedBox(height: 20.0),
                Text(
                  'This extra step shows it"s really you trying to sign in',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue)
                    ),
                    hintText: 'Enter digit code'
                  ),
                )
              ]
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => HomePage(),), (Route<dynamic> route) => false);
                  }, 
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.white
                    ),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))
                    ),
                    minimumSize: MaterialStateProperty.all(Size.fromHeight(60.0)),
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    shadowColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                ),
                SizedBox(height: 14),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up');
                  }, 
                  child: Text(
                    "I need help",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.black
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
    );
  }
}
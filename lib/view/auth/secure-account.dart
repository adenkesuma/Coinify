import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SecureAccount extends StatelessWidget {
  const SecureAccount({super.key});

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
                  value: 0.2, // Value for second step
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
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/Scan.png',
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 20.0),
                Center(
                  child: Text(
                    'Secure your account',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: "GraphikMedium"
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 10.0),
                Center(
                  child: Text(
                    'One way we keep your account secure is with 2-step verification, which requires your phone number. We will never call you or use your number without your permission',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey[700]
                    ),
                    textAlign: TextAlign.center,
                  ),
                )  
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/two-step-verification');
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
          ]
        ) 
      ),
    );
  }
}
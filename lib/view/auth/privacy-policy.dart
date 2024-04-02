import 'package:flutter/material.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Privacy Policy",style: TextStyle(fontFamily: "GraphikMedium"),),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 24,vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Effective Date: 02/04/2024",style: TextStyle(fontSize: 16),),
              SizedBox(height: 5.0,),
              Text("Thank you for using our mobile application [App Name]. This Privacy Policy explains how we collect, use, "
                  "disclose, and safeguard your information when you use our App. Please read this Privacy Policy carefully. "
                  "If you do not agree with the terms of this Privacy Policy, please do not access the App.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10.0,),
              Text("We reserve the right to make changes to this Privacy Policy at any time and for any reason. We will "
                  "alert you about any changes by updating the [Last Updated] date of this Privacy Policy. You are "
                  "encouraged to periodically review this Privacy Policy to stay informed of updates. You will be deemed "
                  "to have been made aware of, will be subject to, and will be deemed to have accepted the changes in any "
                  "revised Privacy Policy by your continued use of the App after the date such revised Privacy Policy is "
                  "posted.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20.0,),
              Text("Collective of Your Information",style: TextStyle(fontSize: 22,fontFamily: "GraphikMedium"),),
              SizedBox(height: 5.0,),
              Text("We may collect information about you in a variety of ways. The information we may collect includes:",
                style: TextStyle(fontSize: 16),
              ),
              Text('\u2022 Personal Data: Personally identifiable information, such as your name, email address, and phone number, that you voluntarily give to us when you register with the App.')
            ],
          )
        ),
      ),
    );
  }
}

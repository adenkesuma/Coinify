import 'package:flutter/cupertino.dart';
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Privacy Policy",style: TextStyle(fontFamily: "GraphikMedium"),),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 30,vertical: 30),
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
              SizedBox(height: 5.0,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("\u2022"),
                  SizedBox(width: 2,),
                  Flexible(
                    child: Text("Personal Data: Personally identifiable information, such as your name, email address, "
                        "and phone number, that you voluntarily give to us when you register with the App.",
                    style: TextStyle(fontSize: 16),),
                  )
                ],
              ),
              SizedBox(height: 2.0,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("\u2022"),
                  SizedBox(width: 2,),
                  Flexible(
                    child: Text("Financial Data: Financial information, such as data related to your payment method "
                        "(e.g., valid credit card number, card brand, expiration date) that we may collect when you "
                        "purchase, order, return, exchange, or request information about our services from the App.",
                      style: TextStyle(fontSize: 16),),
                  )
                ],
              ),
              SizedBox(height: 2.0,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("\u2022"),
                  SizedBox(width: 2.0,),
                  Flexible(
                    child: Text("Mobile Device Access: We may request access or permission to certain features from "
                        "your mobile device, including your mobile device's camera, storage, and other features. If you "
                        "wish to change our access or permissions, you may do so in your device's settings.",
                      style: TextStyle(fontSize: 16),),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("\u2022"),
                  SizedBox(width: 2.0,),
                  Flexible(
                    child: Text("Usage Data: We may automatically collect certain information about your device, "
                        "including information about your web browser, IP address, time zone, and some of the cookies "
                        "that are installed on your device.",
                      style: TextStyle(fontSize: 16),),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("\u2022"),
                  SizedBox(width: 2.0,),
                  Flexible(
                    child: Text("Location Information: We may request access or permission to and track location-based "
                        "information from your mobile device, either continuously or while you are using the App, to "
                        "provide location-based services. If you wish to change our access or permissions, you may do "
                        "so in your device's settings.",
                      style: TextStyle(fontSize: 16),),
                  )
                ],
              ),
              SizedBox(height: 20.0,),
              Text("Use of Your Information",style: TextStyle(fontSize: 22,fontFamily: "GraphikMedium"),),
              SizedBox(height: 5.0,),
              Text("We may use information collected about you, including personal data, for various purposes,"
                  "including but not limited to:",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 5.0,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("\u2022"),
                  SizedBox(width: 2.0,),
                  Flexible(
                    child: Text("Provide, maintain, and improve our App;",
                      style: TextStyle(fontSize: 16),),
                  )
                ],
              ),
              SizedBox(height: 2.0,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("\u2022"),
                  SizedBox(width: 2.0,),
                  Flexible(
                    child: Text("Facilitate transactions and payments;",
                      style: TextStyle(fontSize: 16),),
                  )
                ],
              ),
              SizedBox(height: 2.0,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("\u2022"),
                  SizedBox(width: 2.0,),
                  Flexible(
                    child: Text("Respond to inquiries and offer support;",
                      style: TextStyle(fontSize: 16),),
                  )
                ],
              ),
              SizedBox(height: 2.0,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("\u2022"),
                  SizedBox(width: 2.0,),
                  Flexible(
                    child: Text("Monitor and analyze usage and trends to enhance your experience with the App;",
                      style: TextStyle(fontSize: 16),),
                  )
                ],
              ),
              SizedBox(height: 2.0,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("\u2022"),
                  SizedBox(width: 2.0,),
                  Flexible(
                    child: Text("Send you technical notices, updates, security alerts, and support and "
                        "administrative messages;",
                      style: TextStyle(fontSize: 16),),
                  )
                ],
              ),
              SizedBox(height: 2.0,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("\u2022"),
                  SizedBox(width: 2.0,),
                  Flexible(
                    child: Text("Protect against illegal activities, fraud, and misuse of the App; and",
                      style: TextStyle(fontSize: 16),),
                  )
                ],
              ),
              SizedBox(height: 2.0,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("\u2022"),
                  SizedBox(width: 2.0,),
                  Flexible(
                    child: Text("Carry out any other purpose described to you at the time the information was collected.",
                      style: TextStyle(fontSize: 16),),
                  )
                ],
              ),
              SizedBox(height: 20.0,),
              Text("Disclosure of Your Information",style: TextStyle(fontSize: 22,fontFamily: "GraphikMedium"),),
              SizedBox(height: 5.0,),
              Text("We may share information collected about you, including personal data, in the following ways:",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 5.0,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("\u2022"),
                  SizedBox(width: 2.0,),
                  Flexible(
                    child: Text("With vendors, consultants, and other service providers who need access to such "
                        "information to carry out work on our behalf;",
                      style: TextStyle(fontSize: 16),),
                  )
                ],
              ),
              SizedBox(height: 2.0,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("\u2022"),
                  SizedBox(width: 2.0,),
                  Flexible(
                    child: Text("With third parties to provide targeted advertising;",
                      style: TextStyle(fontSize: 16),),
                  )
                ],
              ),
              SizedBox(height: 2.0,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("\u2022"),
                  SizedBox(width: 2.0,),
                  Flexible(
                    child: Text("In response to a request for information if we believe disclosure is in accordance with "
                        "any applicable law, regulation, or legal process, or as otherwise required by any applicable law, "
                        "rule, or regulation;",
                      style: TextStyle(fontSize: 16),),
                  )
                ],
              ),
              SizedBox(height: 2.0,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("\u2022"),
                  SizedBox(width: 2.0,),
                  Flexible(
                    child: Text("If we believe your actions are inconsistent with the spirit or language of our user "
                        "agreements or policies, or to protect our rights, property, and safety, or the rights, property, "
                        "and safety of others;",
                      style: TextStyle(fontSize: 16),),
                  )
                ],
              ),
              SizedBox(height: 2.0,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("\u2022"),
                  SizedBox(width: 2.0,),
                  Flexible(
                    child: Text("With your consent or at your direction; and",
                      style: TextStyle(fontSize: 16),),
                  )
                ],
              ),
              SizedBox(height: 2.0,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("\u2022"),
                  SizedBox(width: 2.0,),
                  Flexible(
                    child: Text("With affiliates, subsidiaries, and business partners.",
                      style: TextStyle(fontSize: 16),),
                  )
                ],
              ),
              SizedBox(height: 20.0,),
              Text("Retention of Your Information",style: TextStyle(fontSize: 22,fontFamily: "GraphikMedium"),),
              SizedBox(height: 5.0,),
              Text("We will only retain personal data for as long as necessary to fulfill the purposes for "
                  "which we collected it, including for the purposes of satisfying any legal, accounting, or "
                  "reporting requirements. When we no longer need to use your personal data, we will remove it "
                  "from our systems and records and/or take steps to anonymize it so that you can no longer be "
                  "identified from it.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20.0,),
              Text("Security of Your Information",style: TextStyle(fontSize: 22,fontFamily: "GraphikMedium"),),
              SizedBox(height: 5.0,),
              Text("We use administrative, technical, and physical security measures to help protect your personal "
                  "data. While we have implemented safeguards to protect your information, no security system is "
                  "impenetrable and we cannot guarantee the security of our systems 100%.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20.0,),
              Text("Contact Us",style: TextStyle(fontSize: 22,fontFamily: "GraphikMedium"),),
              SizedBox(height: 5.0,),
              Text("If you have questions or comments about this Privacy Policy, please contact us at [insert contact information].",
                style: TextStyle(fontSize: 16),
              ),
            ],
          )
        ),
      ),
    );
  }
}

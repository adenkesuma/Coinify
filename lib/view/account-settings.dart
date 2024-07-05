import 'package:defi/components/toggle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AccountSettings extends StatefulWidget {
  const AccountSettings({super.key});

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 50.0, left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'ivy.zuyp@gmail.com',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: "GraphikMedium",
                      color: Colors.grey.shade700
                    ),
                    textAlign: TextAlign.center,
                  ),          
                  Text(
                    'YuanPin, Lvy Xu',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w800,
                      fontFamily: "GraphikMedium"
                    ),
                    textAlign: TextAlign.center,
                  ),  
                ]
              ),
              SizedBox(height: 14.0,),
              GestureDetector(
                onTap: () {
                  // Tambahkan fungsi untuk menangani ketika konten di klik di sini
                },
                child: Expanded(
                  child: Container(
                    padding: EdgeInsets.all(14.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade500,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Share your love of crypto and get \$10 of free Bitcoin',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: "GraphikMedium", 
                            ), 
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Image.asset(
                          'assets/images/clarity_bitcoin-solid.png',
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Text(
                'Payment Methods',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: "GraphikMedium",
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: (){Navigator.pushNamed(context, '/verify-email');},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))
                  ),
                  minimumSize: MaterialStateProperty.all(Size.fromHeight(60.0)),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                  shadowColor: MaterialStateProperty.all(Colors.transparent),
                  side: MaterialStateProperty.all(BorderSide(color: Colors.grey.shade500, width: 1))
                ),
                child: Text(
                  "Add a payment method",
                  style: TextStyle(fontFamily: "GraphikMedium",fontSize: 15.0),
                ),
              ),
              SizedBox(height: 30,),
              Text(
                'Account',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: "GraphikMedium",
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10,),
              GestureDetector(
                onTap: () {
                  // Tambahkan fungsi untuk menangani ketika konten di klik di sini
                },
                child: Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Limits and features',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: "GraphikMedium", 
                            ), 
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 20,
                        ) 
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Tambahkan fungsi untuk menangani ketika konten di klik di sini
                },
                child: Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Native currency',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: "GraphikMedium", 
                            ), 
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 20,
                        ) 
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Tambahkan fungsi untuk menangani ketika konten di klik di sini
                },
                child: Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Country',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: "GraphikMedium", 
                            ), 
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 20,
                        ) 
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Tambahkan fungsi untuk menangani ketika konten di klik di sini
                },
                child: Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Privacy',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: "GraphikMedium", 
                            ), 
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 20,
                        ) 
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Tambahkan fungsi untuk menangani ketika konten di klik di sini
                },
                child: Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Phone numbers',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: "GraphikMedium", 
                            ), 
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 20,
                        ) 
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Tambahkan fungsi untuk menangani ketika konten di klik di sini
                },
                child: Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Notification settings',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: "GraphikMedium", 
                            ), 
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 20,
                        ) 
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Text(
                'Security',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: "GraphikMedium",
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      'Require PIN / Face ID',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: "GraphikMedium", 
                      ), 
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  ToggleSwitch()
                ],
              ),
              GestureDetector(
                onTap: () {
                  // Tambahkan fungsi untuk menangani ketika konten di klik di sini
                },
                child: Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'PIN / Face ID settings',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: "GraphikMedium", 
                            ), 
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 20,
                        ) 
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: 
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Privacy mode',
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          fontFamily: "GraphikMedium", 
                        ), 
                      ),
                          Text(
                            'Long press on your portfolio balance to hide your balances everywhere in the app',
                            style: TextStyle(
                              fontSize: 13.0,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey.shade600,
                              fontFamily: "GraphikMedium", 
                            ), 
                          )
                    ],
                  ),
                  ),
                  SizedBox(width: 10.0,),
                  ToggleSwitch()
                ],
              ),
              GestureDetector(
                onTap: () {
                  // Tambahkan fungsi untuk menangani ketika konten di klik di sini
                },
                child: Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            'Support',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600,
                              fontFamily: "GraphikMedium", 
                            ), 
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 20,
                        ) 
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.0,),
              ElevatedButton(
                onPressed: (){Navigator.pushNamed(context, '/verify-email');},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))
                  ),
                  minimumSize: MaterialStateProperty.all(Size.fromHeight(60.0)),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                  shadowColor: MaterialStateProperty.all(Colors.transparent),
                  side: MaterialStateProperty.all(BorderSide(color: Colors.grey.shade500, width: 1))
                ),
                child: Text(
                  "Sign out",
                  style: TextStyle(fontFamily: "GraphikMedium", fontSize: 15.0, color: Colors.red),
                ),
              ),
              SizedBox(height: 16.0,),
              Text(
                'App Version: 9.26.4 (92604), production',
                style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: "GraphikMedium", 
                ), 
              ),
              SizedBox(height: 50,)
            ],
          ),
        )
      )
    );
  }
}



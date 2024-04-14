import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ReceiveBitcoin extends StatelessWidget {
  const ReceiveBitcoin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Receive Bitcoin', style: TextStyle(fontFamily: "GraphikMedium", fontWeight: FontWeight.w600),)
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height-30,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/ReceiveBitcoin.png',
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 20.0),
                Center(
                  child: Text(
                    'Be sure to select the right cryptocurrency',
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
                    'If you send crypto to the wrong address (eg, Bitcoin to a Bitcoin Cash address), your crypto will be lost.',
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
                Navigator.pushNamed(context, '/');
              }, 
              child: Text(
                'I understand',
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
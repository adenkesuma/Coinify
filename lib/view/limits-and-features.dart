import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Limits_Features extends StatefulWidget {
  const Limits_Features({super.key});

  @override
  State<Limits_Features> createState() => _Limits_FeaturesState();
}

class _Limits_FeaturesState extends State<Limits_Features> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          child: Text(
            "Limits and Features",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
      body: Container(
        width: 500,
        padding: EdgeInsets.only(left: 10, top: 40),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.card_membership_outlined,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "3D Secure purchases",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                // SizedBox(
                //   width: 100,
                // ),
                Expanded(
                    child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "SGD 150/week",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                )),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(
                  Icons.send,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Send cryptocurrency",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Expanded(
                    child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Enabled",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                )),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(
                  Icons.qr_code_sharp,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Receive crytocurrency",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                // SizedBox(
                //   width: 100,
                // ),
                Expanded(
                    child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Enabled",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                )),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(20), // Atur border radius di sini
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
              ),
              child: Text(
                "You currently have the highest level of account limits and features available",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

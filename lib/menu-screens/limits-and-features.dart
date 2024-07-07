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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Align(
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
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 12),
        child: Column(
          children: [
            const Row(
              children: [
                const Icon(
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
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "SGD 150/week",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  )
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: (){
                showMyDialog(context, "send");
              },
              child: const Row(
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
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: (){
                showMyDialog(context, "receive");
              },
              child: const Row(
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
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(5), // Atur border radius di sini
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
              ),
              child: const Text(
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

Future<void> showMyDialog(BuildContext context, String text){
  return showDialog(
    context: context,
    builder: (BuildContext context){
      return AlertDialog(
        backgroundColor: Colors.white,
        title: Text("Sorry :("),
        content: Text("You can't $text your crypto to another wallet right now, because we're under maintenance",style: TextStyle(fontFamily: "GraphikRegular"),),
      );
    },
  );
}
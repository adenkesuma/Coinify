import 'package:flutter/material.dart';

class CardInfo extends StatefulWidget {
  CardInfo({super.key});

  @override
  State<CardInfo> createState() => _CardInfoState();
}

class _CardInfoState extends State<CardInfo> {
  FocusNode nameOnCardText = FocusNode();
  FocusNode cardNumberText = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 24.0,vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Pick your card",style: TextStyle(fontFamily: "GraphikMedium",fontSize: 22),),
            SizedBox(height: 30.0,),
            Text("Name on card",
              style: TextStyle(
                fontFamily: "GraphikMedium",fontSize: 16,color: nameOnCardText.hasFocus ? Colors.blue : Colors.black
              ),
            ),
            Focus(
              onFocusChange: (focus) {
                setState(() {});
              },
              child: TextFormField(
                focusNode: nameOnCardText,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                  hintText  : "Mobbin",
                ),
              ),
            ),
            SizedBox(height: 16.0,),
            Text("Card number",
              style: TextStyle(
                  fontFamily: "GraphikMedium",fontSize: 16,color: cardNumberText.hasFocus ? Colors.blue : Colors.black
              ),
            ),
            Focus(
              onFocusChange: (focus) {
                setState(() {});
              },
              child: TextFormField(
                focusNode: cardNumberText,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                  hintText: "XXXX XXXX XXXX XX",
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset("assets/images/Visa.png"),
                      SizedBox(width: 16.0,),
                      Image.asset("assets/images/Mastercard.png"),
                      SizedBox(width: 16.0,)
                    ],
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

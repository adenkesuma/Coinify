import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class OrderPreview extends StatefulWidget {
  const OrderPreview({super.key});

  @override
  State<OrderPreview> createState() => _OrderPreviewState();
}

class _OrderPreviewState extends State<OrderPreview> {
  String _nominalText = '8.52889997';
  String _selectedCrypto = 'MATIC';

  void _showInfoDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Info"),
          content: Text("This is an info button."),
          actions: [
            TextButton(
              child: Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _handleTap() {         //masi kosong
    print("Underlined text clicked");

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Order Preview"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 500,
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '$_nominalText $_selectedCrypto ',
                      style: const TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(205, 2, 29, 235),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  height: 1,
                  color: Colors.grey,
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "$_selectedCrypto price",
                            style: const TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                            ),
                          ),
                          const Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text("SGD 2.17",
                              style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey
                            ),)
                            )
                          ) 
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("Payment method",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                            ),),
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text("DBS Bank Ltd",
                              style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey
                            ),)
                            )
                          ) 
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("Purchase",
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                            ),),
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text("SGD 18.51",
                              style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey
                            ),)
                            )
                          ) 
                        ],
                      ),
                     SizedBox(height: 5,),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Coinbase fee",
                                style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                              ),
                            ),  
                          Text("Includes taxes",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),),     
                            ]
                          ),
                          SizedBox(width: 10,),
                          IconButton(
                            icon: Icon(Icons.info),
                            onPressed: () => _showInfoDialog(context),
                            iconSize: 20.0,
                            tooltip: "Info",
                            color: Colors.black,
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text("SGD 1.49",
                              style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey
                              ),)
                            )
                          ), 
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("Total",
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                            ),),
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text("SGD 20.00",
                              style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w900
                            ),)
                            )
                          ) 
                        ],
                      ),  
                      SizedBox(height: 50,),
                      Row(
                        children: [
                          Text("Process by",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey
                            ),),
                          SizedBox(width: 5,),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Coinbase UK, Lrd.",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Color.fromARGB(205, 2, 29, 235),
                                      decoration: TextDecoration.underline,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = _handleTap,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Text("Crypto markets are unique.",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey
                            ),),
                          SizedBox(width: 5,),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Learn more",
                                    style: TextStyle(
                                      color: Color.fromARGB(205, 2, 29, 235),
                                      fontSize: 16
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = _handleTap,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 100,),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  height: 1,
                  color: Colors.grey,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    width: double.infinity,
                    height: 60,
                    child: TextButton(
                      onPressed: (){}, 
                      child: Text(
                        "Buy now",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: BorderSide(color: Colors.transparent),
                        ),
                        backgroundColor: Color.fromARGB(255, 2, 29, 235),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

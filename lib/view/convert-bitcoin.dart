import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConvertBitcoin extends StatefulWidget {
  const ConvertBitcoin({super.key});

  @override
  State<ConvertBitcoin> createState() => _ConvertBitcoinState();
}

class _ConvertBitcoinState extends State<ConvertBitcoin> {
  String _nominalText = '0';
  String _selectedCurrency = 'IDR';
  String fromCrypto = "BTC";
  String toCrypto = "ETH";
  String fromLogo = 'assets/coints/BTC.png';
  String toLogo = 'assets/coints/ETH.png';

  void swapCrypto() {
    setState(() {
      String temp = fromCrypto;
      fromCrypto = toCrypto;
      toCrypto = temp;

      String tempLogo = fromLogo;
      fromLogo = toLogo;
      toLogo = tempLogo;
    });
  }

  Widget _buildNumberButton(String value) {
    return Expanded(
      child: SizedBox(
        width: 50,
        height: 100,
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
              side: BorderSide(color: Colors.transparent),
            ),
          backgroundColor: Colors.transparent
          ),
          onPressed: () => _onButtonPressed(value),
          child: Text(
            value,
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
        ),
      ),
    );
  }

  Widget _buildBackspaceButton() {
    return Expanded(
      child: SizedBox(
        height: 100,
        width: 50, 
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
              side: BorderSide(color: Colors.transparent),
            ),
          backgroundColor: Colors.transparent
          ),
          onPressed: () => _onButtonPressed('backspace'),
          child: Icon(Icons.backspace, color: Colors.black,),
        ),
      ),
    );
  }

  Widget _buildMaxButton() {
    return TextButton(
      
      child: Text("Max",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),),
      onPressed: () {
        
      },
      style: TextButton.styleFrom(
        fixedSize: Size.fromRadius(23),
        shape: CircleBorder(
          side: BorderSide(color: Colors.grey)
        )
      ),
      
    );
  }

  void _onButtonPressed(String value) {
    setState(() {
      if (value == 'backspace') {
        if (_nominalText.length == 1) {
          _nominalText = '0';
        } else if (_nominalText.isNotEmpty) {
          _nominalText = _nominalText.substring(0, _nominalText.length - 1);
        }
      } else {
        if (_nominalText == '0') {
          if (value != '0' && value != '000') {
            _nominalText = value;
          }
        } else {
          _nominalText += value;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Convert Bitcoin'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: 500,
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(child: Text(r"$0.00 available")), // Raw String
                SizedBox(height: 20),
                Row(
                  children: [
                    _buildMaxButton(),
                    SizedBox(width: 100 ,),
                    Text(
                      '$_selectedCurrency $_nominalText',
                      style: TextStyle(
                        fontSize: 50,
                        color: Color.fromARGB(255, 2, 29, 235),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              fromLogo,
                              width: 40,
                              height: 40,
                            ),
                          ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('From'),
                                Text(fromCrypto, 
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold
                                    ),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        iconSize: 40,
                        icon: Icon(Icons.swap_vert),
                        style: IconButton.styleFrom(
                        shape: CircleBorder(
                          side: BorderSide(color: Colors.grey)
                        )
                      ),
                        onPressed: swapCrypto,
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text('To'),
                                  Text(toCrypto, 
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold
                                      ),
                                  ),
                                ],
                              ),
                              ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              toLogo,
                              width: 40,
                              height: 40,
                            ),
                          ),
                              SizedBox(width: 10),
                              
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Column(
                   children: [
                    Row(
                      children: [
                        _buildNumberButton('1'),
                        SizedBox(width: 5),
                        _buildNumberButton('2'),
                        SizedBox(width: 5),
                        _buildNumberButton('3'),
                      ],
                      
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        _buildNumberButton('4'),
                        SizedBox(width: 5),
                        _buildNumberButton('5'),
                        SizedBox(width: 5),
                        _buildNumberButton('6'),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        _buildNumberButton('7'),
                        SizedBox(width: 5),
                        _buildNumberButton('8'),
                        SizedBox(width: 5),
                        _buildNumberButton('9'),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        _buildNumberButton('0'),
                        SizedBox(width: 5),
                        _buildNumberButton('000'),
                        SizedBox(width: 5),
                        _buildBackspaceButton(),
                      ],
                    ),
                   
                  ],
                ),
                 SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: 60,
                  child: TextButton(
                      onPressed: (){}, 
                      child: Text(
                        "Preview convert",
                        style: TextStyle(
                          color: Colors.white,
                        ),),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: BorderSide(color: Colors.transparent),
                        ),
                        backgroundColor: Color.fromARGB(255, 2, 29, 235)
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

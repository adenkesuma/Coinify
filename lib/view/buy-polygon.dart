import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BuyPolygon extends StatefulWidget {
  const BuyPolygon({super.key});

  @override
  State<BuyPolygon> createState() => _BuyPolygonState();
}

class _BuyPolygonState extends State<BuyPolygon> {
  // final TextEditingController _controller = TextEditingController();
  String _nominalText = '0';
  String _selectedCurrency = 'IDR';
  final List<String> _currencies = ['IDR', 'USD', 'SGD', 'EUR', 'MYR', 'JPY'];
  String _selectedPurchaseOption = 'One time purchase';
    final List<String> _purchaseOptions = [
    'One time purchase',
    'Every day',
    'Every week',
    '1st and 15th of the month',
    'Every month'
  ];
 final List<Map<String, String>> _availableCards = [
  {
    'bankName': 'DBS Bank Ltd',
    'cardNumber': '**** **** **** 8604',
    'cardText': 'SGD 150.00 limit',
  },
  {
    'bankName': 'PT Bank Central Asia Tbk',
    'cardNumber': '**** **** **** 4567',
    'cardText': 'IDR 10.000.000 limit',
  },

];
  String? _bankName;
String? _cardNumber;
String? _cardText;

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

  void _showCurrencyDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select Currency'),
          content: Container(
            width: double.minPositive,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: _currencies.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(_currencies[index]),
                  onTap: () {
                    setState(() {
                      _selectedCurrency = _currencies[index];
                    });
                    Navigator.of(context).pop();
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }

   void _showPurchaseOptionDialog() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    isScrollControlled: true,
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          
          child: Wrap(
            
            children: [
              Column(
              mainAxisSize: MainAxisSize.min,

              children:[ 
                Text(
                  'Repeat this purchase',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                
                ListView.builder(
                shrinkWrap: true,
                itemCount: _purchaseOptions.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(_purchaseOptions[index]),
                    onTap: () {
                      setState(() {
                        _selectedPurchaseOption = _purchaseOptions[index];
                      });
                      Navigator.of(context).pop();
                    },
                  );
                },
              ),
              ]
            ),
            ]
          ),
        );
      },
    );
  }

  void _showCardSelectionDialog() {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    isScrollControlled: true,
    builder: (BuildContext context) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        child: Wrap(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Select a Card',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: _availableCards.length,
                  itemBuilder: (BuildContext context, int index) {
                    final card = _availableCards[index];
                    final bankName = card['bankName'] ?? 'Unknown Bank';
                    final cardNumber = card['cardNumber'] ?? 'XXXX XXXX XXXX XXXX';
                    final cardText = card['cardText'] ?? '';

                    return ListTile(
                      leading: Icon(Icons.credit_card),
                      title: Text(bankName),
                      subtitle: Text(cardNumber),
                      trailing: Text(cardText),
                      onTap: () {
                        setState(() {
                          _bankName = bankName;
                          _cardNumber = cardNumber;
                          _cardText = cardText;
                        });
                        Navigator.of(context).pop();
                      },
                    );
                  },
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {
                       
                      },
                      child: Text(
                        "Add a payment method",
                        style: TextStyle(color: Colors.black),
                      ),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ),
              SizedBox(height: 20,),
              
              ],
              
            ),
          ],
          
        ),
      );
    },
  );
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

  Widget _buildCurrencyButton() {
    return IconButton(
      icon: Icon(Icons.swap_vert),
      onPressed: _showCurrencyDialog,
      style: IconButton.styleFrom(
        shape: CircleBorder(
          side: BorderSide(color: Colors.grey)
        )
      ),
      
    );
  }
   Widget _buildPurchaseOptionButton() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 140),
      child: SizedBox(
        height: 40,
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: BorderSide(color: Colors.grey),
              ),
            backgroundColor: Colors.transparent
          ),
          onPressed: _showPurchaseOptionDialog,
          child: Text(_selectedPurchaseOption,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
            ),
        ),
      ),
    );
  }

  Widget _buildCardButton() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 40),
    child: SizedBox(
        height: 75,
        child: TextButton(
        onPressed: _showCardSelectionDialog,
        style: TextButton.styleFrom(
          padding: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: BorderSide(color: Colors.grey),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Icon(Icons.credit_card_sharp, size: 40, color: Color.fromARGB(255, 2, 29, 235),),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(_bankName ?? 'Select a Card', 
                    style: TextStyle(
                      fontSize: 14,   
                      color: Colors.black
                    )
                  ),
                  Text(_cardNumber ?? 'XXXX XXXX XXXX XXXX', 
                    style: TextStyle(
                      fontSize: 12,
                      
                      color: Colors.grey,
                    )
                  ),
                ],
              ),
              Spacer(),
              Text(_cardText ?? '', 
                style: TextStyle(
                  fontSize: 16, 
                  
                  color: Colors.black
                )
              ),
            ],
          ),
        ),
      ),
    ),
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy Polygon'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$_selectedCurrency $_nominalText',
                    style: TextStyle(fontSize: 50, 
                    color: Color.fromARGB(255, 2, 29, 235),
                    fontWeight: FontWeight.w900),
                  ),
                 SizedBox(width: 30,),
                  _buildCurrencyButton(),
                ],
              ),
              SizedBox(height: 70),
              _buildPurchaseOptionButton(),
              SizedBox(height: 20),
              _buildCardButton(),
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
                        "Preview buy",
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
            ]
              )
            
          ),
        ),
      );
    
  }
}
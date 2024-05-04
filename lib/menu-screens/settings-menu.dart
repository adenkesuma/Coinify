import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsMenu extends StatefulWidget {
  const SettingsMenu({super.key});

  @override
  State<SettingsMenu> createState() => _SettingsMenuState();
}

class _SettingsMenuState extends State<SettingsMenu> {
  String _selectedText = 'All assets';

  void _updateSelectedText(String newText) {
    setState(() {
      _selectedText = newText;
    });
  }  

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
                    'In the past 24 hours',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      fontFamily: "GraphikMedium",
                      color: Colors.grey.shade700
                    ),
                    textAlign: TextAlign.center,
                  ),          
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Market is up',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w700,
                              fontFamily: "GraphikMedium"
                            ),
                            textAlign: TextAlign.center,
                          ),  
                          Text(
                            ' +4.19%',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w700,
                              color: Colors.green.shade700,
                              fontFamily: "GraphikMedium"
                            ),
                            textAlign: TextAlign.center,
                          ) 
                        ],
                      ),
                      Center(
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.grey.shade600,
                              width: 1
                            )
                          ),
                          child: Center(
                            child: Icon(
                              Icons.search,
                              size: 30,
                              color: Colors.grey.shade900,
                            ),
                          ),
                        ), 
                      )
                    ]
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () => _updateSelectedText('All assets'),
                        child: Text(
                          'All assets',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: _selectedText == 'All assets' ? Colors.blue : Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      InkWell(
                        onTap: () => _updateSelectedText('Tradable'),
                        child: Text(
                          'Tradable',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: _selectedText == 'Tradable' ? Colors.blue : Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      InkWell(
                        onTap: () => _updateSelectedText('Gainers'),
                        child: Text(
                          'Gainers',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: _selectedText == 'Gainers' ? Colors.blue : Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      InkWell(
                        onTap: () => _updateSelectedText('Losers'),
                        child: Text(
                          'Losers',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: _selectedText == 'Losers' ? Colors.blue : Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text(_selectedText)
                ],
              ),
            ],
          )
        )
      ),
    );
  }
}
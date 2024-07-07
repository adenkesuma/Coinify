import 'package:defi/constant/coins.dart';
import 'package:flutter/material.dart';

class CryptoGraph extends StatefulWidget {
  final int index;
  final String what;

  const CryptoGraph({Key? key, required this.index, required this.what}) : super(key: key);

  @override
  State<CryptoGraph> createState() => _CryptoGraphState();
}

class _CryptoGraphState extends State<CryptoGraph> {
  late List<Crypto> temp;
  
  @override
  void initState(){
    if(widget.what == "All assets"){
      temp = cryptoList;
    }
    else if(widget.what == "Tradeable"){
      temp = tradeableCryptoList;
    }
    else if(widget.what == "Gainers"){
      temp = gainersCryptoList;
    }
    else{
      temp = losersCryptoList;
    }
    super.initState();
  }

  String _selectedText = "1D";
  void selectedText(text){
    setState(() {
      _selectedText = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          // height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 24,vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${temp[widget.index].fullName} price",style: TextStyle(fontFamily: "GraphikMedium",fontSize: 14),),
              Text("${temp[widget.index].price}",style: TextStyle(fontFamily: "GraphikMedium",fontSize: 30),),
              Text("${temp[widget.index].percen}",style: TextStyle(color: Colors.green),),
              Center(child: Image.asset("assets/images/Vector 62.png")),
              SizedBox(height: 22,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){
                      selectedText("1H");
                    },
                    child: Text("1H",
                      style: TextStyle(color: _selectedText=="1H" ? Colors.blue : Colors.black),
                    ),
                  ),
                  SizedBox(width: 38,),
                  InkWell(
                    onTap: (){
                      selectedText("1D");
                    },
                    child: Text("1D",
                      style: TextStyle(color: _selectedText=="1D" ? Colors.blue : Colors.black),
                    ),
                  ),
                  SizedBox(width: 38,),
                  InkWell(
                    onTap: (){
                      selectedText("1W");
                    },
                    child: Text("1W",
                      style: TextStyle(color: _selectedText=="1W" ? Colors.blue : Colors.black),
                    ),
                  ),
                  SizedBox(width: 38,),
                  InkWell(
                    onTap: (){
                      selectedText("1M");
                    },
                    child: Text("1M",
                      style: TextStyle(color: _selectedText=="1M" ? Colors.blue : Colors.black),
                    ),
                  ),
                  SizedBox(width: 38,),
                  InkWell(
                    onTap: (){
                      selectedText("1Y");
                    },
                    child: Text("1Y",
                      style: TextStyle(color: _selectedText=="1Y" ? Colors.blue : Colors.black),
                    ),
                  ),
                  SizedBox(width: 38,),
                  InkWell(
                    onTap: (){
                      selectedText("All");
                    },
                    child: Text("All",
                      style: TextStyle(color: _selectedText=="All" ? Colors.blue : Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 17,vertical: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5.0)
                ),
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(temp[widget.index].logoUrl),
                        SizedBox(width: 16,),
                        Text(temp[widget.index].name,style: TextStyle(fontFamily: "GraphikRegular"),),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("\$ 0.00"),
                        Text("\$ 0 ${temp[widget.index].name}"),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 16,),
              ElevatedButton(
                onPressed: () {
                }, 
                child: Text(
                  "Trade",
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.white
                  ),
                ),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))
                  ),
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  minimumSize: MaterialStateProperty.all(Size.fromHeight(60.0)),
                ),
              ),
              SizedBox(height: 40,),
              Text("About ${temp[widget.index].fullName}",style: TextStyle(fontFamily: "GraphikMedium",fontSize: 22),),
              SizedBox(height: 12,),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Text("The world's first cryptocurrency, ${temp[widget.index].fullName} is stored and exchanged securely on the internet through a digital ledger known as a blockchain. Bitcoin are divisible into smaller units known as satoshis - each satoshi is worth 0.00000001 ${temp[widget.index].fullName}",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16,color: Colors.grey),))
            ],
          ),
        ),
      ),
    );
  }
}
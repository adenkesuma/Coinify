import 'package:defi/constant/coins.dart';
import 'package:flutter/material.dart';

class Searching extends StatefulWidget {
  const Searching({super.key});

  @override
  State<Searching> createState() => _SearchingState();
}

class _SearchingState extends State<Searching> {
  TextEditingController filterText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 250,
                    child: 
                      TextFormField(
                        controller: filterText,
                        onChanged: (text){
                          setState(() {
                            print(filterCrypto);
                            filterTheCrypto(text);
                          });
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue)),
                          suffixIcon: GestureDetector(
                            onTap: (){
                              setState(() {
                                filterText.clear();
                              });
                            },
                            child: Icon(Icons.clear),
                          )
                        ),
                      ),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      filterText.clear();
                      filterCrypto.clear();
                      Navigator.pop(context);
                    },
                    child: Text("Cancel"),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))
                      ),
                      backgroundColor: MaterialStateProperty.all(Colors.transparent),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      shadowColor: MaterialStateProperty.all(Colors.transparent),
                      textStyle: MaterialStateProperty.all(
                        TextStyle(
                          fontFamily: "GraphikRegular",
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filterCrypto.length,
                itemBuilder: (context, index) {
                  return Container(
                    // color: Colors.black,
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset(filterCrypto[index].logoUrl),
                                SizedBox(width: 16,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(filterCrypto[index].fullName,style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16),),
                                    Text(filterCrypto[index].name,style: TextStyle(fontFamily: "GraphikRegular",fontSize: 14,color: Colors.grey),),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(filterCrypto[index].price,style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16),),
                                Text(filterCrypto[index].percen,style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16,color: Colors.green),)
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 24,)
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
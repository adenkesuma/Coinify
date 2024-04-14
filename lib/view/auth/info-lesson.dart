import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InfoLesson extends StatelessWidget {
  const InfoLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true ,
        title: Container(
          width: 200,
          child: PreferredSize(
            preferredSize: Size.fromHeight(10.0),
            child: Row(
              children: [
                Expanded(
                  child: LinearProgressIndicator(
                    value: 1, // Value for first step
                    backgroundColor: Color(0xD9D9D9D9),
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  ),
                ),
                SizedBox(width: 7.0),
                Expanded(
                  child: LinearProgressIndicator(
                    value: 1, // Value for second step
                    backgroundColor: Color(0xD9D9D9D9),
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  ),
                ),
                SizedBox(width: 7.0),
                Expanded(
                  child: LinearProgressIndicator(
                    value: 1, // Value for third step
                    backgroundColor: Color(0xD9D9D9D9),
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  ),
                ),
                 SizedBox(width: 7.0),
                Expanded(
                  child: LinearProgressIndicator(
                    value: 1, // Value for second step
                    backgroundColor: Color(0xD9D9D9D9),
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  ),
                ),
                SizedBox(width: 7.0),
                Expanded(
                  child: LinearProgressIndicator(
                    value: 0.6, // Value for third step
                    backgroundColor: Color(0xD9D9D9D9),
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  ),
                ),
              ],
            ),
          ),
        ),
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
                SizedBox(height: 20.0),
                Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: "GraphikMedium",
                        color: Colors.black, // Warna default untuk teks
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Polygon chains come in several "flavors", with its',
                        ),
                        TextSpan(
                          text: ' Plasma',
                          style: TextStyle(
                            color: Colors.blue, // Warna biru untuk teks "chains"
                          ),
                        ),
                        TextSpan(
                          text: ' and',
                        ),
                        TextSpan(
                          text: ' PoS sidechains',
                          style: TextStyle(
                            color: Colors.blue, // Warna biru untuk teks "chains"
                          ),
                        ),
                        TextSpan(
                          text: ' being used by many Ethereum apps today',
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Image.asset(
                  'assets/images/structure-line.png',
                  fit: BoxFit.cover,
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              }, 
              child: Text(
                'Next Lesson',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                  fontFamily: "GraphikMedium",
                ),
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  )
                ),
                minimumSize: MaterialStateProperty.all(Size.fromHeight(60.0)),
                shadowColor: MaterialStateProperty.all(Colors.transparent),
                side: MaterialStateProperty.all(
                  BorderSide(color: Colors.grey, width: 1)
                )
              ),
            ),
          ]
        ) 
      ),
    );
  }
}
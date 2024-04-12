import 'package:flutter/material.dart';
//1 hour

class SecurityAlertsSettings extends StatefulWidget {
  const SecurityAlertsSettings({super.key});

  @override
  State<SecurityAlertsSettings> createState() => _SecurityAlertSettingsState();
}

class _SecurityAlertSettingsState extends State<SecurityAlertsSettings> {
  bool _push = false;
  int _selectedIndex = 4;
  final List<Widget> _pages = [
    Container(child: Text("Home"),),
    Container(child: Text("Portfolio"),),
    Container(child: Text("hehehehe"),),
    Container(child: Text("Prices"),),
    Builder(builder: (context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(16, 14, 0, 16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(10.0))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Security alert(preview)",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 14.0,color: Colors.grey),),
                SizedBox(height: 8.0,),
                Text("Your password has been reset",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16.0),),
                Text("Jan 1",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16.0,color: Colors.grey),)
              ],
            ),
          ),
          SizedBox(height: 8.0,),
          Text("Get notified about important security alerts such as password resets",
            style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16.0,color: Colors.grey),
          ),
          SizedBox(height: 40,),
          Text("Preferences",style: TextStyle(fontFamily: "GraphikMedium",fontSize: 22.0),),
          SizedBox(height: 4.0,),
          Text("Tell us how you'd like to be notified",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16.0,color: Colors.grey),),
          SizedBox(height: 12.0,),
          Row(
            children: [
              Text("Push"),
              Switch(
                  value: _push,
                  onChanged: (bool value){
                    setState((){
                      _push = value;
                    });
                  }
              )
            ],
          )
        ],
      );
    },)
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Security alerts settings"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.0,vertical: 12.0),
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/NavBar/Home_fill.png",
              color: _selectedIndex==0 ? Colors.blue : Colors.grey,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/NavBar/Pipe_fill.png",
              color: _selectedIndex==1 ? Colors.blue : Colors.grey,
            ),
            label: "Portfolio"
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/NavBar/Group 105.png",
            ),
            label: ""
          ),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/NavBar/Chart_alt_fill.png",
                color: _selectedIndex==3 ? Colors.blue : Colors.grey,
              ),
              label: "Prices"
          ),
          BottomNavigationBarItem(
              icon: Image.asset("assets/images/NavBar/User_fill.png",
                color: _selectedIndex==4 ? Colors.blue : Colors.grey,
              ),
              label: "Settings"
          ),
        ],
      ),
    );
  }
}

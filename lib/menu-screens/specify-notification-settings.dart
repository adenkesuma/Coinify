import 'package:defi/data-provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SecurityAlertSettings extends StatefulWidget {
  final String what;

  const SecurityAlertSettings({
    super.key,
    required this.what,
  });

  @override
  State<SecurityAlertSettings> createState() => _SecurityAlertSettingsState();
}

class _SecurityAlertSettingsState extends State<SecurityAlertSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("${widget.what} settings"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 50),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 12,),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)
                ),
                height: 100,
                child: Container(
                  padding: EdgeInsets.fromLTRB(16, 14, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Security alerts (preview)",style: TextStyle(fontSize: 14.0,color: Colors.grey,fontFamily: "GraphikRegular"),),
                      SizedBox(height: 8,),
                      Text("Your password has been reset",style: TextStyle(fontSize: 16.0,fontFamily: "GraphikRegular"),),
                      Text("Jan 1",style: TextStyle(fontSize: 16.0,color: Colors.grey,fontFamily: "GraphikRegular"),),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Text(
                "Get notified about important security alerts, such as password resets",
                style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16.0,color: Colors.grey),
              ),
              SizedBox(height: 40,),
              Text("Preferences",style: TextStyle(fontFamily: "GraphikMedium",fontSize: 22),),
              SizedBox(height: 4,),
              Text("Tell us how you'd like to have notified",style: TextStyle(color: Colors.grey),),
              SizedBox(height: 12,),
              Expanded(
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index){
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(widget.what == "Security alerts" ? Provider.of<NotificationProvider>(context).securityAlerts[index][0] : 
                                widget.what == "Account activity" ? Provider.of<NotificationProvider>(context).accountActivity[index][0] : 
                                widget.what == "Price alerts" ? Provider.of<NotificationProvider>(context).priceAlerts[index][0] :
                                widget.what == "News" ? Provider.of<NotificationProvider>(context).news[index][0] :
                                Provider.of<NotificationProvider>(context).productAnnouncements[index][0],
                                style: TextStyle(fontSize: 16,fontFamily: "GraphikRegular"),
                              ),
                              Switch(
                                value: Provider.of<NotificationProvider>(context).switchValue(widget.what, index),
                                activeColor: Colors.blue,
                                onChanged: (bool value){
                                  Provider.of<NotificationProvider>(context,listen: false).changeSwitchValue(widget.what, index, value);
                                  setState(() {
                                  
                                  });
                                }
                              )
                            ],
                          ),
                          SizedBox(height: 40,),
                        ],
                      ),
                    );
                  }
                ),
              )
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text("Push",style: TextStyle(fontSize: 16,fontFamily: "GraphikRegular"),),
              //     Switch(
              //       activeColor: Colors.blue,
              //       value: _push,
              //       onChanged: (bool value){
              //         setState(() {
              //           _push = value;
              //         });
              //       }
              //     )
              //   ],
              // ),
              // SizedBox(height: 40,),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text("Email",style: TextStyle(fontSize: 16,fontFamily: "GraphikRegular"),),
              //     Switch(
              //       activeColor: Colors.blue,
              //       value: _email,
              //       onChanged: (bool value){
              //         setState(() {
              //           _email = value;
              //         });
              //       }
              //     )
              //   ],
              // ),
              // SizedBox(height: 40,),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text("SMS (required)",style: TextStyle(fontSize: 16,fontFamily: "GraphikRegular"),),
              //     Switch(
              //       activeColor: Colors.blue,
              //       value: _sms,
              //       onChanged: (bool value){
              //         setState(() {
              //           _sms = value;
              //         });
              //       }
              //     )
              //   ],
              // ),
              // SizedBox(height: 40,),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text("In app",style: TextStyle(fontSize: 16,fontFamily: "GraphikRegular"),),
              //     Switch(
              //       activeColor: Colors.blue,
              //       value: _inApp,
              //       onChanged: (bool value){
              //         setState(() {
              //           _inApp = value;
              //         });
              //       }
              //     )
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
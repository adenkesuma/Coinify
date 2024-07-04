import 'package:defi/data-provider.dart';
import 'package:defi/menu-screens/specify-notification-settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NotificationSettings extends StatefulWidget {
  const NotificationSettings({super.key});

  @override
  State<NotificationSettings> createState() => _NotificationSettingsState();
}

class _NotificationSettingsState extends State<NotificationSettings> {
  @override
  void initState(){
    super.initState();
    Provider.of<NotificationProvider>(context,listen: false).setDescription();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Notification settings",),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24,vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Push notification",style: TextStyle(fontFamily: "GraphikMedium",fontSize: 22),),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Take a break",style: TextStyle(fontSize: 16,fontFamily: "GraphikRegular"),),
                      Text("Pause notification for a short time",style: TextStyle(fontSize: 14,fontFamily: "GraphikRegular",color: Colors.grey),)
                    ],
                  ),
                  Switch(
                    activeColor: Colors.blue,
                    value: Provider.of<NotificationProvider>(context).takeABreak,
                    onChanged: (bool value){
                      setState(() {
                        Provider.of<NotificationProvider>(context,listen: false).changeTakeABreak();
                      });
                    }
                  )
                ],
              ),
              SizedBox(height: 32,),
              Text("Push notification",style: TextStyle(fontFamily: "GraphikMedium",fontSize: 22),),
              SizedBox(height: 4,),
              Text("Choose the messages you'd like to receive",style: TextStyle(fontSize: 16,fontFamily: "GraphikRegular",color: Colors.grey),),
              SizedBox(height: 24,),
              SizedBox(
                height: 50,
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecurityAlertSettings(what: "Security alerts",),));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Security alerts",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16),),
                          Text(Provider.of<NotificationProvider>(context).securityAlertsStatus,style: TextStyle(fontFamily: "GraphikRegular",fontSize: 14,color: Colors.grey),),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32,),
              SizedBox(
                height: 50,
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecurityAlertSettings(what: "Account activity",),));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Account activity",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16),),
                          Text(Provider.of<NotificationProvider>(context).accountActivityStatus,style: TextStyle(fontFamily: "GraphikRegular",fontSize: 14,color: Colors.grey),),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32,),
              SizedBox(
                height: 50,
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecurityAlertSettings(what: "Price alerts",),));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Price alerts",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16),),
                          Text(Provider.of<NotificationProvider>(context).priceAlertsStatus,style: TextStyle(fontFamily: "GraphikRegular",fontSize: 14,color: Colors.grey),),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32,),
              SizedBox(
                height: 50,
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecurityAlertSettings(what: "News",),));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("News",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16),),
                          Text(Provider.of<NotificationProvider>(context).newsStatus,style: TextStyle(fontFamily: "GraphikRegular",fontSize: 14,color: Colors.grey),),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32,),
              SizedBox(
                height: 50,
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecurityAlertSettings(what: "Product announcements",),));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Product announcements",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16),),
                          Text(Provider.of<NotificationProvider>(context).productAnnouncementsStatus,style: TextStyle(fontFamily: "GraphikRegular",fontSize: 14,color: Colors.grey),),
                        ],
                      ),
                      Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32,),
            ],
          ),
        ),
      ),
    );
  }
}
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
        title: Text("Notification settings",style: TextStyle(fontFamily: "GraphikMedium",fontSize: 18),),
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
                    onChanged: (bool value) async{
                      if(value){
                        await showMyModalBottomSheet(context);
                        setState(() {
                          
                        });
                      }
                      else{
                        setState(() {
                          Provider.of<NotificationProvider>(context,listen: false).changeTakeABreak();
                        });
                      }
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

Future<void> showMyModalBottomSheet(BuildContext context){
  return showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context){
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 8,vertical: 24),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Want to take a break?",style: TextStyle(fontFamily: "GraphikMedium",fontSize: 22),),
                  SizedBox(height: 12,),
                  Text("You can pause push notification for up to a week. Email and SMS won't be affected",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16,color: Colors.grey),),
                  SizedBox(height: 16,),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<NotificationProvider>(context,listen: false).changeTakeABreak();
                Navigator.pop(context);
              }, 
              child: Text("Unmuted"),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))
                ),
                minimumSize: MaterialStateProperty.all(Size.fromHeight(60.0)),
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
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<NotificationProvider>(context,listen: false).changeTakeABreak();
                Navigator.pop(context);
              }, 
              child: Text("8 hours"),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))
                ),
                minimumSize: MaterialStateProperty.all(Size.fromHeight(60.0)),
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
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<NotificationProvider>(context,listen: false).changeTakeABreak();
                Navigator.pop(context);
              }, 
              child: Text("1 day"),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))
                ),
                minimumSize: MaterialStateProperty.all(Size.fromHeight(60.0)),
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
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<NotificationProvider>(context,listen: false).changeTakeABreak();
                Navigator.pop(context);
              }, 
              child: Text("1 week"),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))
                ),
                minimumSize: MaterialStateProperty.all(Size.fromHeight(60.0)),
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
            ),
          ],
        )
      );
    }
  );
}
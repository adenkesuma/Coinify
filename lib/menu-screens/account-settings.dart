import "package:defi/data-provider.dart";
import "package:defi/menu-screens/choose-pinfaceid.dart";
import "package:defi/menu-screens/limits-and-features.dart";
import "package:defi/menu-screens/notification-settings.dart";
import "package:defi/menu-screens/share-address.dart";
import "package:defi/view/auth/receive-bitcoin.dart";
import "package:defi/view/welcome.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

class AccountSettings extends StatefulWidget {
  const AccountSettings({super.key});

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 25,vertical: 68),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(Provider.of<ProfileProvider>(context).userEmail,style: TextStyle(fontFamily: "GraphikMedium",fontSize: 14,color: Colors.grey),),
              Text(Provider.of<ProfileProvider>(context).userUsername,style: TextStyle(fontFamily: "GraphikMedium",fontSize: 30)),
              SizedBox(height: 14,),
              SizedBox(
                height: 100,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ShareAddress(),));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text("Share your love of crypto and get \$10 of free Bitcoin",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16),)
                      ),
                      SizedBox(child: Image.asset("assets/images/clarity_bitcoin-solid.png"),)
                    ],
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        side: BorderSide(color: Colors.grey),
                      ),
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
              ),
              SizedBox(height: 32,),
              Text("Payment Methods",style: TextStyle(fontFamily: "GraphikMedium",fontSize: 22),),
              SizedBox(height: 12,),
              ElevatedButton(
                onPressed: (){},
                child: Text("Add a payment method"),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: Colors.grey),
                    ),
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
              SizedBox(height: 32,),
              Text("Account",style: TextStyle(fontFamily: "GraphikMedium",fontSize: 22),),
              SizedBox(height: 12,),
              SizedBox(
                height: 50,
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => Limits_Features(),));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Limits and features",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16),),
                      Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.0,),
              SizedBox(
                height: 50,
                child: InkWell(
                  onTap: (){

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Native currency",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16),),
                      Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.0,),
              SizedBox(
                height: 50,
                child: InkWell(
                  onTap: (){

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Country",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16),),
                      Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.0,),
              SizedBox(
                height: 50,
                child: InkWell(
                  onTap: (){

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Privacy",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16),),
                      Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.0,),
              SizedBox(
                height: 50,
                child: InkWell(
                  onTap: (){

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Phone numbers",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16),),
                      Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16.0,),
              SizedBox(
                height: 50,
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => NotificationSettings(),));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Notification settings",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16),),
                      Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32.0,),
              Text("Security",style: TextStyle(fontFamily: "GraphikMedium",fontSize: 22),),
              SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Require PIN / Face ID",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16),),
                  Switch(
                    activeColor: Colors.blue,
                    value: Provider.of<ProfileSecurityProvider>(context,listen: false).requirePinFaceId,
                    onChanged: (bool value){
                      Provider.of<ProfileSecurityProvider>(context,listen: false).changeRequirePinFaceId(value);
                    }
                  )
                ],
              ),
              SizedBox(height: 16,),
              SizedBox(
                height: 50,
                child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => choosePinFaceId(),));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("PIN / Face ID settings",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16),),
                      Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Privacy mode",style: TextStyle(fontSize: 16,fontFamily: "GraphikRegular"),),
                      Text("Long press on your portfolio balance to",style: TextStyle(fontSize: 14,fontFamily: "GraphikRegular",color: Colors.grey),),
                      Text("hide your balances everywhere in the app",style: TextStyle(fontSize: 14,fontFamily: "GraphikRegular",color: Colors.grey),)
                    ],
                  ),
                  Switch(
                    activeColor: Colors.blue,
                    value: Provider.of<ProfileSecurityProvider>(context).privacyMode,
                    onChanged: (bool value) {
                      Provider.of<ProfileSecurityProvider>(context,listen: false).changePrivacyMode(value);
                    }
                  ),
                ],
              ),
              SizedBox(height: 16,),
              SizedBox(
                height: 50,
                child: InkWell(
                  onTap: (){

                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Support",style: TextStyle(fontFamily: "GraphikRegular",fontSize: 16),),
                      Icon(Icons.arrow_forward_ios,color: Colors.grey,)
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40,),
              ElevatedButton(
                onPressed: (){
                  Provider.of<ProfileProvider>(context).resetWhole();
                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Welcome(),), (Route<dynamic> route) => false);
                },
                child: Text("Sign out"),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: Colors.grey),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all(Size.fromHeight(60.0)),
                  backgroundColor: MaterialStateProperty.all(Colors.transparent),
                  foregroundColor: MaterialStateProperty.all(Colors.red),
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
          ),
        ),
      ),
    );
  }
}
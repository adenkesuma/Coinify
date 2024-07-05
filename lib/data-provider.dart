import 'package:flutter/material.dart';

class ProfileSecurityProvider extends ChangeNotifier{
  bool requirePinFaceId = false;
  void changeRequirePinFaceId(bool value){
    requirePinFaceId = value;
    notifyListeners();
  }

  bool privacyMode = false;
  void changePrivacyMode(bool value){
    privacyMode = value;
    notifyListeners();
  }
}

class NotificationProvider extends ChangeNotifier {
  bool takeABreak = false;
  void changeTakeABreak(){
    takeABreak = !takeABreak;
    notifyListeners();
  }

  List<List<dynamic>> securityAlerts = [["Push",false],["Email",false],["SMS",true],["In app",false]];
  List<List<dynamic>> accountActivity = [["Push",false],["Email",false],["SMS",true],["In app",false]];
  List<List<dynamic>> priceAlerts = [["Push",false],["Email",false],["SMS",true],["In app",false]];
  List<List<dynamic>> news = [["Push",false],["Email",false],["SMS",true],["In app",false]];
  List<List<dynamic>> productAnnouncements = [["Push",false],["Email",false],["SMS",true],["In app",false]];
  List securityAlertsNotification = [];
  List accountActivityNotification = [];
  List priceAlertsNotificiation = [];
  List newsNotification = [];
  List productAnnouncementsNotification = [];
  String securityAlertsStatus = "";
  String accountActivityStatus = "";
  String priceAlertsStatus = "";
  String newsStatus = "";
  String productAnnouncementsStatus = "";

  bool switchValue(String what, int index){
    if(what == "Security alerts"){
      return securityAlerts[index][1];
    }
    else if(what == "Account activity"){
      return accountActivity[index][1];
    }
    else if(what == "Price alerts"){
      return priceAlerts[index][1];
    }
    else if(what == "News"){
      return news[index][1];
    }
    else{
      return productAnnouncements[index][1];
    }
  }

  void changeSwitchValue(String what, int index, bool value){
    if(what == "Security alerts"){
      securityAlerts[index][1] = value;
    }
    else if(what == "Account activity"){
      accountActivity[index][1] = value;
    }
    else if(what == "Price alerts"){
      priceAlerts[index][1] = value;
    }
    else if(what == "News"){
      news[index][1] = value;
    }
    else{
      productAnnouncements[index][1] = value;
    }
    setDescription();
    notifyListeners();
  }

  void setDescription(){
    securityAlertsNotification.clear();
    for(int i=0;i<securityAlerts.length;i++){
      if(securityAlerts[i][1]) securityAlertsNotification.add(securityAlerts[i][0]);
    }
    securityAlertsStatus = securityAlertsNotification.join(", ");

    accountActivityNotification.clear();
    for(int i=0;i<accountActivity.length;i++){
      if(accountActivity[i][1]) accountActivityNotification.add(accountActivity[i][0]);
    }
    accountActivityStatus = accountActivityNotification.join(", ");

    priceAlertsNotificiation.clear();
    for(int i=0;i<priceAlerts.length;i++){
      if(priceAlerts[i][1]) priceAlertsNotificiation.add(accountActivity[i][0]);
    }
    priceAlertsStatus = priceAlertsNotificiation.join(", ");

    newsNotification.clear();
    for(int i=0;i<news.length;i++){
      if(news[i][1]) newsNotification.add(news[i][0]);
    }
    newsStatus = newsNotification.join(", ");

    productAnnouncementsNotification.clear();
    for(int i=0;i<productAnnouncements.length;i++){
      if(productAnnouncements[i][1]) productAnnouncementsNotification.add(productAnnouncements[i][0]);
    }
    productAnnouncementsStatus = productAnnouncementsNotification.join(", ");
  }
}


import 'package:get/get.dart';

import '../../utils/constants.dart';

class HomeController extends GetxController {

 // HomeController._();

  /*static HomeController get instance {
    return HomeController._();
  }*/

  var optionList = [
    "New Group",
    "New Broadcast",
    "Linked Devices",
    "Starred Messages",
    "Payments",
    "Setting",
  ];

  var selectedTab = TabEnum.chats;

  void setTab(TabEnum value){
    selectedTab = value;
    update();
  }
  bool checkTab(TabEnum value){
    if(selectedTab == value) return true;
    return false;
  }

}
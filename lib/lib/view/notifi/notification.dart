import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/view/notifi/component/noti_body.dart';
import 'package:untitled/widgets/custom_text.dart';
class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationState();
}

class _NotificationState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("NOTIFICATION",textAlign: TextAlign.center,style: TextStyle(letterSpacing: 4.0),),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.search),
          ),

        ],
        backgroundColor: Color(0xfff19bb7),),
      drawer: Drawer(),
      body:

      Column(
        crossAxisAlignment:CrossAxisAlignment.start ,

        children: [
          Container(
            color: Color(0xFFf8bbd0),
            width: double.infinity,
            height: 100,
            padding: EdgeInsets.only(top: 25, left: 25),
            child: Text("Alerts & \nupdates __", textAlign:TextAlign.left,style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20,  )),

          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CustomText(text: "Today",color: Colors.grey.withOpacity(.4),fontsize:14 , ),
          ),
          SizedBox(height: 10),
          NotiBody(text: "Hooray! you have complicated all the tasks for today"),
          SizedBox(height: 10),
          Row(
            children: [
              NotiBody(text: "A new udatep is available! Go to",),

           Text('Play Store',
              style: TextStyle(decoration: TextDecoration.underline),
          ),],),

          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CustomText(text: "Yesterday",color: Colors.grey.withOpacity(.4),fontsize:14 , ),
          ),
          SizedBox(height: 10),
          NotiBody(text: "Hooray!  you have complicated all  the tasks for today"),
          SizedBox(height: 10),
          NotiBody(text: "You missed one task yesterday"),

          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CustomText(text: "Tue, Aug 1,2017",color: Colors.grey.withOpacity(.4),fontsize:14 , ),
          ),
          SizedBox(height: 10),
          NotiBody(text: "You missed one task yesterday "),

        ],
      ),













    );
  }
}

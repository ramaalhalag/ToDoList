import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/view/profile/switch_body.dart';
import 'package:untitled/widgets/custom_text.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
        title: Text("PROFILE",textAlign: TextAlign.center,style: TextStyle(letterSpacing: 4.0),),
    actions: [

    Padding(
      padding: EdgeInsets.only(right: 15),
      child: Icon(Icons.edit),
    )
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
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/photo4.jpg"),),
            ),
          ),
          SizedBox(width: 30,),
          Column(
            children: [
              Text("Tiffany Schneider", textAlign:TextAlign.left,style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20,  )),
            SizedBox(height: 5),
              Text("tiffany@email.com", textAlign:TextAlign.left,style: TextStyle(
               fontSize: 14,  )),
            ],
          ),
        ],
      ),
),

    SizedBox(height: 10),
    Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: CustomText(text: "Notificcation Settings",color: Colors.grey.withOpacity(.4),fontsize:14 , ),
    ),
      SizedBox(height: 10),
      SwitchBody(text: 'Get email Notification'),
    SizedBox(height: 10),
    SwitchBody(text: 'Vibrate on alert'),

        SizedBox(height: 10),
        Padding(
         padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CustomText(text: "Floss Settings",color: Colors.grey.withOpacity(.4),fontsize:14 , ),
            ),
            SizedBox(height: 10),
            SwitchBody(text: 'Share profile with other floss users',),
            SizedBox(height: 10),
            SwitchBody(text: 'Show your task completation status'),



    ]));

  }
}
